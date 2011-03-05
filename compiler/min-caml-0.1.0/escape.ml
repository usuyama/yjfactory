open Printf
open Syntax

exception Var_expected

let id_esc_pair (x, _, esc) = (x, esc)
let append_list list env = List.append (List.map id_esc_pair list) env

let set_can = function
  | Esc.Var t -> t := Esc.Can
  | _ -> raise Var_expected
let set_can_if esc' esc =
  match Esc.to_b esc' with
    | true -> set_can esc
    | _ -> ()
let rec is_escape env = function
  | Let((x, _, esc), _, e)
  | LetRec({ name = (x, _, esc); args = _; body = _}, e) -> is_escape ((x, esc) :: env) e
  | LetTuple(xs, _, e) -> is_escape (append_list xs env) e
  | Var(x) when (List.mem_assoc x env) -> Esc.to_b (List.assoc x env)
  | If(_, e1, e2) -> is_escape env e1 || is_escape env e2
  | Array(_, _, esc)
  | Tuple(_, esc) -> Esc.to_b esc
  | _ -> false


let rec fv = function
  | Bool(_) | Unit | Int(_) | Float(_) -> S.empty
  | SMS | SLS | HP | SP -> S.empty
  | Not(x) | Neg(x) | FNeg(x) | FAbs(x) | FSqrt(x) | F2I(x) | I2F(x) | Floor(x) | Sendc(x) -> fv x
  | Add(x, y) | Sub(x, y) | Mul(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.union (fv x) (fv y)
  | If(x, y, z) -> S.union (fv x) (S.union (fv z) (fv y))
  | Let((x, _, _), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | LetRec({ name = (x, _, _); args = yts; body = e1 }, e2) ->
      let zs = S.diff (fv e1) (S.of_list (List.map (fun (x,_,_) -> x) yts)) in
	S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys) -> List.fold_left (fun s e -> S.union s (fv e)) S.empty (x :: ys)
  | Tuple(xs, _) -> List.fold_left (fun s e -> S.union s (fv e)) S.empty xs
  | Put(x, y, z) -> List.fold_left (fun s e -> S.union s (fv e)) S.empty [x; y; z]
  | LetTuple(xs, y, e) -> S.union (List.fold_left (fun s e -> S.union s (fv e)) S.empty (e::[y])) (S.of_list (List.map (fun (x,_,_) -> x) xs))
  | Div(x, y) | LE(x, y) | Eq(x, y) | Array(x, y, _) -> S.union (fv x) (fv y)

let set_var x env esc =
  match Esc.to_b esc with
    | true when List.mem_assoc x env -> set_can (List.assoc x env)
    | _ -> ()

let cat env extenv = List.append env extenv
let rec nest e env extenv esc' = (* letのbody、実引数の場合。末尾再帰を考慮しない。esc'は末尾のフラグをたてるかどうか。*)
  match e with
    | LetRec({ name = (x, _, esc); args = yts; body = e1}, e2) ->
	let fun_env = (append_list yts [(x, esc)]) in
	  flat e1 fun_env (cat env extenv) Esc.Can;
	  List.iter (fun a -> set_var a (cat env extenv) esc) (S.elements (fv e1));  (* 関数クロージャの自由変数 *)
	  nest e2 ((x, esc) :: env) extenv esc'
    | Let((x, _, esc), e1, e2) ->
	nest e1 env extenv esc;
	nest e2 ((x, esc) :: env) extenv esc'
    | LetTuple(xs, e1, e2) ->
	nest e1 env extenv (Esc.of_b (List.fold_left (fun a (_, _,b) -> a || Esc.to_b b) false xs)); (* 一つでも中身がescapeするなら、本体のtupleもescapeにする *)
	nest e2 (append_list xs env) extenv esc'
    | If(c, e1, e2) ->
	nest e1 env extenv esc';
	nest e2 env extenv esc'
    | Tuple(tl, esc) ->
	set_can_if esc' esc;
	List.iter (fun x -> nest x env extenv esc) tl
    | Put(arr, _, e) -> (* 副作用に対する保守的な実装 *)
	if is_escape (cat env extenv) arr then (* is_escapeでいいのか不安 *)
	  nest e env extenv Esc.Can
	else ();
    | Array(_, x, esc) -> set_can_if esc' esc;nest x env extenv esc
    | App(x, args) -> nest x env extenv Esc.Never;List.iter (fun x -> nest x env extenv Esc.Can) args; (* 実引数はエスケープ。保守的 *)
    | Var(x) when List.mem_assoc x env && Esc.to_b esc' ->  set_can (List.assoc x env) (* その関数スコープで定義されたもののみ *)
    | _ -> ()

and flat e env extenv esc' = (* 関数内のフラットな位置いる場合。 *)
  match e with
    | LetRec({ name = (x, _, esc); args = yts; body = e1}, e2) ->
	let fun_env = (append_list yts [(x, esc)]) in
	  flat e1 fun_env (cat env extenv) Esc.Can;
	  List.iter (fun a -> set_var a (cat env extenv) esc) (S.elements (fv e1));  (* 関数クロージャの自由変数 *)
	  flat e2 ((x, esc) :: env) extenv esc'
    | Let((x, _, esc), e1, e2) ->
	flat e1 env extenv esc;
	flat e2 ((x, esc) :: env) extenv esc'
    | LetTuple(xs, e1, e2) ->
	nest e1 env extenv (Esc.of_b (List.fold_left (fun a (_, _,b) -> a || Esc.to_b b) false xs)); (* 一つでも中身がescapeするなら、本体のtupleもescapeにする *)
	flat e2 (append_list xs env) extenv esc'
    | If(c, e1, e2) ->
	flat e1 env extenv esc';
	flat e2 env extenv esc'
    | Tuple(tl, esc) ->
	set_can_if esc' esc;
	List.iter (fun x -> nest x env extenv esc) tl
    | Put(arr, _, e) -> (* 副作用に対する保守的な実装 *)
	if is_escape (cat env extenv) arr then (* is_escapeでいいのか不安 *)
	  nest e env extenv Esc.Can
	else ();
    | Array(_, x, esc) -> set_can_if esc' esc;nest x env extenv esc
    | App(x, args) -> flat x env extenv Esc.Can;List.iter (fun x -> nest x env extenv Esc.Can) args; (* 実引数はエスケープ。保守的 *)
    | Var(x) when List.mem_assoc x env  && Esc.to_b esc' -> set_can (List.assoc x env) (* その関数スコープで定義されたもののみ *)
    | _ -> ()

let deref_esc = function
  | Esc.Var e -> !e
  | _ -> raise Var_expected
let deref_id_typ (x, t, esc) = (x, t, deref_esc esc)
let rec deref = function
  | Not(e) -> Not(deref e)
  | Neg(e) -> Neg(deref e)
  | Add(e1, e2) -> Add(deref e1, deref e2)
  | Sub(e1, e2) -> Sub(deref e1, deref e2)
  | Eq(e1, e2) -> Eq(deref e1, deref e2)
  | LE(e1, e2) -> LE(deref e1, deref e2)
  | FNeg(e) -> FNeg(deref e)
  | FSqrt(e) -> FSqrt(deref e)
  | FAbs(e) -> FAbs(deref e)
  | F2I(e) -> F2I(deref e)
  | I2F(e) -> I2F(deref e)
  | FAdd(e1, e2) -> FAdd(deref e1, deref e2)
  | FSub(e1, e2) -> FSub(deref e1, deref e2)
  | FMul(e1, e2) -> FMul(deref e1, deref e2)
  | FDiv(e1, e2) -> FDiv(deref e1, deref e2)
  | Sendc(e) -> Sendc(deref e)
  | Floor(e) -> Floor(deref e)
  | Div(e1, e2) -> Div(deref e1, deref e2)
  | Mul(e1, e2) -> Mul(deref e1, deref e2)
  | If(e1, e2, e3) -> If(deref e1, deref e2, deref e3)
  | Let(xt, e1, e2) -> Let(deref_id_typ xt, deref e1, deref e2)
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
      LetRec({ name = deref_id_typ xt;
	       args = List.map deref_id_typ yts;
	       body = deref e1 },
	     deref e2)
  | App(e, es) -> App(deref e, List.map deref es)
  | Tuple(es, esc) -> Tuple(List.map deref es, deref_esc esc)
  | LetTuple(xts, e1, e2) -> LetTuple(List.map deref_id_typ xts, deref e1, deref e2)
  | Array(e1, e2, esc) -> Array(deref e1, deref e2, deref_esc esc)
  | Get(e1, e2) -> Get(deref e1, deref e2)
  | Put(e1, e2, e3) -> Put(deref e1, deref e2, deref e3)
  | Var _ | Float _ | Int _ | Bool _ | SP | HP | SLS | SMS | Unit as r -> r

let f e =
  let rec loop c old_tree =
    printf "[ escape analysis : %d ]\n" c;
    flat e [] [] Esc.Can;
    ignore (Syntax.print e);
    let current_tree = deref e in
      if current_tree = old_tree then
	(printf "[ end escape ]\n";current_tree)
      else
	loop (c + 1) current_tree
  in loop 1 (deref e)
