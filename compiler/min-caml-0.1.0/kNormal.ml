(*-*- coding:euc-jp -*-*)
open Printf
(* give names to intermediate values (K-normalization) *)

type t = (* K正規化後の式 (caml2html: knormal_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | SRA of Id.t * int
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t (* 比較 + 分岐 (caml2html: knormal_branch) *)
  | IfLE of Id.t * Id.t * t * t (* 比較 + 分岐 *)
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.t
  | ExtFunApp of Id.t * Id.t list
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let print t = (* KNormal.t -> KNormal.t *)
  (* i : indent level *)
  let rec pt i t =
    let i = i + 1
    in let pi () =
      (printf "%s" (String.make (i * 2) ' '))
    in
      pi ();
      (match t with
	 | Unit -> printf "Unit\n"
	 | Int i -> printf "Int(%s)\n" (string_of_int i)
	 | Float f -> printf "Float(%s)\n" (string_of_float f)
	 | Var t -> printf "Var(%s)\n" t
	 | Tuple t -> printf "Tuple Start\n";List.iter (pi ();printf "  %s\n") t;pi ();printf "Tuple end\n"
	 | Neg t -> printf "Neg %s\n" t;
	 | Add(t1, t2) -> printf "Add %s + %s\n" t1 t2
	 | Sub(t1, t2) -> printf "Sub %s - %s\n" t1 t2
	 | SRA(t1, i) -> printf "SRA %s %d\n" t1 i
	 | Mul(t1, t2) -> printf "Mul %s - %s\n" t1 t2
	 | FNeg t -> printf "FNeg %s\n" t
	 | FAdd(t1, t2) -> printf "FAdd %s +. %s\n" t1 t2
	 | FSub(t1, t2) -> printf "FSub %s -. %s\n" t1 t2
	 | FMul(t1, t2) -> printf "FMul %s *. %s\n" t1 t2
	 | FDiv(t1, t2) -> printf "FDiv %s /. %s\n" t1 t2
	 | IfEq(t1, t2, t3, t4) -> printf "IF %s = %s THEN\n" t1 t2;pt i t3;pi ();printf "ELSE\n";pt i t4
	 | IfLE(t1, t2, t3, t4) -> printf "IF %s <= %s THEN\n" t1 t2;pt i t3;pi ();printf "ELSE\n";pt i t4
	 | Let((t1, _), t3, t4) -> printf "LET %s =\n" t1;pt i t3;pi ();printf "IN\n";pt i t4
	 | LetRec(fundef, t) -> (printf "LetRec %s" (fst fundef.name);
				 (List.iter
				    (fun (id, _ ) -> printf " %s" id)
				    fundef.args);
				 printf " =\n";
				 pt i fundef.body;
				 pi ();printf "IN\n";
				 pt i t);
	 | App(t, tl) -> printf "APP %s\n" t;pi ();printf "ACTUAL_ARGS";List.iter (printf " %s") tl;printf "\n"
	 | LetTuple(itl, t1, t2) -> (printf "LETTUPLE\n";
				    (List.iter
				      (fun (id, _ ) -> pi ();printf "  %s\n" id)
				      itl);
				    pi ();printf "= %s\n" t1;
				    pi ();printf "IN\n";
				    pt i t2;)
	 | ExtArray t -> printf "ExtArray %s\n" t
	 | ExtFunApp(t, tl) -> printf "ExtFunApp %s\n" t;List.iter (pi ();printf "  %s\n") tl
	 | Get(t1, t2) -> printf "GET %s %s\n" t1 t2
	 | Put(t1, t2, t3) -> printf "PUT %s %s %s\n" t1 t2 t3)
 in (printf "=== KNormal.t ===\n";pt 0 t;printf "=== End ===\n";t);;


let rec fv = function (* 式に出現する（自由な）変数 (caml2html: knormal_fv) *)
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | FNeg(x) | SRA(x, _) -> S.singleton x
  | Add(x, y) | Sub(x, y) | Mul(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
	S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys) -> S.of_list (x :: ys)
  | Tuple(xs) | ExtFunApp(_, xs) -> S.of_list xs
  | Put(x, y, z) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

(* generate let x = e in k x.  *)
let insert_let (e, t) k = (* letを挿入する補助関数 (caml2html: knormal_insert) *)
  match e with
    | Var(x) -> k x
    | _ -> 
	let x = Id.gentmp t in
	let e', t' = k x in
	  Let((x, t), e, e'), t'
(* TypeEnv -> Syntax.t -> (KNormal.t, Type.t) *)
let rec g env = function (* K正規化ルーチン本体 (caml2html: knormal_g) *)
  | Syntax.Unit -> Unit, Type.Unit
  | Syntax.Bool(b) -> Int(if b then 1 else 0), Type.Int (* 論理値true, falseを整数1, 0に変換 (caml2html: knormal_bool) *)
  | Syntax.Int(i) -> Int(i), Type.Int
  | Syntax.Float(d) -> Float(d), Type.Float
  | Syntax.Not(e) -> g env (Syntax.If(e, Syntax.Bool(false), Syntax.Bool(true)))
  | Syntax.Neg(e) ->
      insert_let (g env e)
	(fun x -> Neg(x), Type.Int)
  | Syntax.Add(e1, e2) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> Add(x, y), Type.Int))
  | Syntax.Sub(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> Sub(x, y), Type.Int))
  | Syntax.Mul(e1, e2) -> 
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> Mul(x, y), Type.Int))
  | Syntax.Div(e1, e2) -> 
      let rec log2 x y =
	if x = 1 then (true, y)
	else
	  if x mod 2 = 0 then
	    log2 (x / 2) (y + 1)
	  else
	    (false, 0)
      in
	(match e1, e2 with
	   | _, Syntax.Int(d) -> 
	       (match log2 d 0 with
		  | false, _ -> failwith "Int Div supports only with SRA"
		  | true, i -> 	(insert_let (g env e1)
				   (fun x -> SRA(x, i), Type.Int)))
	   | _, _ -> failwith "Int Div supports only with SRA")
  | Syntax.FNeg(e) ->
      insert_let (g env e)
	(fun x -> FNeg(x), Type.Float)
  | Syntax.FAdd(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> FAdd(x, y), Type.Float))
  | Syntax.FSub(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> FSub(x, y), Type.Float))
  | Syntax.FMul(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> FMul(x, y), Type.Float))
  | Syntax.FDiv(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	    (fun y -> FDiv(x, y), Type.Float))
  | Syntax.Eq _ | Syntax.LE _ as cmp ->
      g env (Syntax.If(cmp, Syntax.Bool(true), Syntax.Bool(false)))
  | Syntax.If(Syntax.Not(e1), e2, e3) -> g env (Syntax.If(e1, e3, e2)) (* notによる分岐を変換 (caml2html: knormal_not) *)
  | Syntax.If(Syntax.Eq(e1, e2), e3, e4) ->
	(insert_let (g env e1)
	   (fun x -> insert_let (g env e2)
	      (fun y ->
		 let e3', t3 = g env e3 in
		 let e4', t4 = g env e4 in
		   IfEq(x, y, e3', e4'), t3)))
(*      in
	(match e1, e2 with
	   | Syntax.Float(0.0), _ | _, Syntax.Float(0.0) | Syntax.Int(_), _ | _, Syntax.Int(_) -> f ()
	   | Syntax.Var(x), _ when M.find x env = Type.Int -> f ()
	   | _, _ -> failwith "float equality supports only with 0.0") *)
  | Syntax.If(Syntax.LE(e1, e2), e3, e4) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y ->
	      let e3', t3 = g env e3 in
	      let e4', t4 = g env e4 in
		IfLE(x, y, e3', e4'), t3))
  | Syntax.If(e1, e2, e3) -> g env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false)), e3, e2)) (* 比較のない分岐を変換 (caml2html: knormal_if) *)
  | Syntax.Let((x, t), e1, e2) ->
      let e1', t1 = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
	Let((x, t), e1', e2'), t2
  | Syntax.Var(x) when M.mem x env -> Var(x), M.find x env
  | Syntax.Var(x) -> (* 外部配列の参照 (caml2html: knormal_extarray) *)
      (match M.find x !Typing.extenv with
      | Type.Array(_) as t -> ExtArray x, t
      | _ -> failwith (Printf.sprintf "external variable %s does not have an array type" x))
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2) ->
      let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let e1', t1 = g (M.add_list yts env') e1 in
      LetRec({ name = (x, t); args = yts; body = e1' }, e2'), t2
  | Syntax.App(Syntax.Var(f), e2s) when not (M.mem f env) -> (* 外部関数の呼び出し (caml2html: knormal_extfunapp) *)
      (match M.find f !Typing.extenv with
      | Type.Fun(_, t) ->
	  let rec bind xs = function (* "xs" are identifiers for the arguments *)
	    | [] -> ExtFunApp(f, xs), t
	    | e2 :: e2s ->
		insert_let (g env e2)
		  (fun x -> bind (xs @ [x]) e2s) in
	  bind [] e2s (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.App(e1, e2s) ->
      (match g env e1 with
      | _, Type.Fun(_, t) as g_e1 ->
	  insert_let g_e1
	    (fun f ->
	      let rec bind xs = function (* "xs" are identifiers for the arguments *)
		| [] -> App(f, xs), t
		| e2 :: e2s ->
		    insert_let (g env e2)
		      (fun x -> bind (xs @ [x]) e2s) in
	      bind [] e2s) (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.Tuple(es) ->
      let rec bind xs ts = function (* "xs" and "ts" are identifiers and types for the elements *)
	| [] -> Tuple(xs), Type.Tuple(ts)
	| e :: es ->
	    let _, t as g_e = g env e in
	    insert_let g_e
	      (fun x -> bind (xs @ [x]) (ts @ [t]) es) in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2) -> 
      insert_let (g env e1)
	(fun y ->
	  let e2', t2 = g (M.add_list xts env) e2 in
	  LetTuple(xts, y, e2'), t2)
  | Syntax.Array(e1, e2) -> (* Array.create e1 e2 *)
      insert_let (g env e1)
	(fun x ->
	  let _, t2 as g_e2 = g env e2 in
	  insert_let g_e2
	    (fun y ->
	       let l = match t2 with
		 | Type.Float -> "create_float_array"
		 | _ -> "create_array" in
		 ExtFunApp(l, [x; y]), Type.Array(t2)))
  | Syntax.Get(e1, e2) -> (* e1.(e2) *)
      (match g env e1 with
	 | _, Type.Array(t) as g_e1 ->
	     insert_let g_e1
	       (fun x -> insert_let (g env e2)
		  (fun y -> Get(x, y), t))
	 | _ -> assert false)
  | Syntax.Put(e1, e2, e3) -> (* e1.(e2) <- e3 *)
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> insert_let (g env e3)
	       (fun z -> Put(x, y, z), Type.Unit)))

let f e = fst (g M.empty e)


