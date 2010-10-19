(*-*-coding:euc-jp-*-*)

open Printf

type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* クロージャ変換後の式 (caml2html: closure_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of (Id.t * Type.t) * closure * t
  | AppCls of Id.t * Id.t list (* apply closure *)
  | AppDir of Id.l * Id.t list (* apply top level function *)
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.l
type fundef = { name : Id.l * Type.t;
		args : (Id.t * Type.t) list;
		formal_fv : (Id.t * Type.t) list;
		body : t }
type prog = Prog of fundef list * t

let rec fv = function
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | FNeg(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2)| IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys) -> S.of_list (x :: ys)
  | AppDir(_, xs) | Tuple(xs) -> S.of_list xs
  | LetTuple(xts, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

(* known <= 自由変数をつかわない関数 *)
let rec g env known = function (* クロージャ変換ルーチン本体 (caml2html: closure_g) *)
  | KNormal.Unit -> Unit
  | KNormal.Int(i) -> Int(i)
  | KNormal.Float(d) -> Float(d)
  | KNormal.Neg(x) -> Neg(x)
  | KNormal.Add(x, y) -> Add(x, y)
  | KNormal.Sub(x, y) -> Sub(x, y)
  | KNormal.FNeg(x) -> FNeg(x)
  | KNormal.FAdd(x, y) -> FAdd(x, y)
  | KNormal.FSub(x, y) -> FSub(x, y)
  | KNormal.FMul(x, y) -> FMul(x, y)
  | KNormal.FDiv(x, y) -> FDiv(x, y)
  | KNormal.IfEq(x, y, e1, e2) -> IfEq(x, y, g env known e1, g env known e2)
  | KNormal.IfLE(x, y, e1, e2) -> IfLE(x, y, g env known e1, g env known e2)
  | KNormal.Let((x, t), e1, e2) -> Let((x, t), g env known e1, g (M.add x t env) known e2)
  | KNormal.Var(x) -> Var(x)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2) -> (* 関数定義の場合 (caml2html: closure_letrec) *)
      (* 関数定義let rec x y1 ... yn = e1 in e2の場合は、
	 xに自由変数がない(closureを介さずdirectに呼び出せる)
	 と仮定し、knownに追加してe1をクロージャ変換してみる *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* 本当に自由変数がなかったか、変換結果e1'を確認する *)
      (* 注意: e1'にx自身が変数として出現する場合はclosureが必要!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml参照) *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
	if S.is_empty zs then known', e1' else
	(* 駄目だったら状態(toplevelの値)を戻して、クロージャ変換をやり直す *)
	(Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
	 Format.eprintf "function %s cannot be directly applied in fact@." x;
	 toplevel := toplevel_backup;
	 let e1' = g (M.add_list yts env') known e1 in
	 known, e1') in
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* 自由変数のリスト *)
      let zts = List.map (fun z -> (z, M.find z env')) zs in (* ここで自由変数zの型を引くために引数envが必要 *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* トップレベル関数を追加 *)
      let e2' = g env' known' e2 in
      if S.mem x (fv e2') then (* xが変数としてe2'に出現するか *)
	MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2') (* 出現していたら削除しない *)
      else
	(Format.eprintf "eliminating closure(s) %s@." x;
	 e2') (* 出現しなければMakeClsを削除 *)
  | KNormal.App(x, ys) when S.mem x known -> (* 関数適用の場合 (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." x;
      AppDir(Id.L(x), ys)
  | KNormal.App(f, xs) -> AppCls(f, xs)
  | KNormal.Tuple(xs) -> Tuple(xs)
  | KNormal.LetTuple(xts, y, e) -> LetTuple(xts, y, g (M.add_list xts env) known e)
  | KNormal.Get(x, y) -> Get(x, y)
  | KNormal.Put(x, y, z) -> Put(x, y, z)
  | KNormal.ExtArray(x) -> ExtArray(Id.L(x))
  | KNormal.ExtFunApp(x, ys) -> AppDir(Id.L("yj_" ^ x), ys)

let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in
  Prog(List.rev !toplevel, e')


let print_t t = (* Closure.t -> Closure.t *)
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
	 | FNeg t -> printf "FNeg %s\n" t
	 | FAdd(t1, t2) -> printf "FAdd %s +. %s\n" t1 t2
	 | FSub(t1, t2) -> printf "FSub %s -. %s\n" t1 t2
	 | FMul(t1, t2) -> printf "FMul %s *. %s\n" t1 t2
	 | FDiv(t1, t2) -> printf "FDiv %s /. %s\n" t1 t2
	 | IfEq(t1, t2, t3, t4) -> printf "IF %s = %s THEN\n" t1 t2;pt i t3;pi ();printf "ELSE\n";pt i t4
	 | IfLE(t1, t2, t3, t4) -> printf "IF %s <= %s THEN\n" t1 t2;pt i t3;pi ();printf "ELSE\n";pt i t4
	 | Let((t1, _), t3, t4) -> printf "LET %s =\n" t1;pt i t3;pi ();printf "IN\n";pt i t4
	 | LetTuple(itl, t1, t2) -> (printf "LETTUPLE\n";
				    (List.iter
				      (fun (id, _ ) -> pi ();printf "  %s\n" id)
				      itl);
				    pi ();printf "= %s\n" t1;
				    pi ();printf "IN\n";
				    pt i t2;)
	 | ExtArray(Id.L(t)) -> printf "ExtArray %s\n" t
	 | Get(t1, t2) -> printf "GET\n %s %s" t1 t2
	 | Put(t1, t2, t3) -> printf "PUT %s %s %s" t1 t2 t3
	 | MakeCls((t1, typ), clo, t2) ->  (printf "MakeCls %s/n" t1;
					    pi ();printf "entry: %s\n" (Id.str_of_l clo.entry))
	 | AppCls(t, tl) -> (printf "AppCls %s\n" t;
			     pi ();List.iter (fun t -> printf "  %s" t) tl;printf "\n")
	 | AppDir(l, tl) -> (printf "AppDir %s\n" (Id.str_of_l l);
			     pi ();List.iter (fun t -> printf "  %s" t) tl;printf "\n"))
 in (printf "=== Closure.t ===\n";pt 0 t;printf "=== End ===\n";t)

let print (Prog(fundef_list, t)) = (* Closure.prog -> Closure.prog *)
  let print_fundef f =
    printf "<<< fundef : %s >>>\nargs:" (Id.str_of_l (fst f.name));
    List.iter (fun (t,_) -> printf "  %s" t) f.args;
    printf "\nformal_fv:";List.iter (fun (t,_) -> printf "  %s" t) f.formal_fv;printf "\n";
    printf "body:\n";ignore(print_t f.body);()    
  in (printf "=== Closure.prog ===\nfundef_list:\n";List.iter print_fundef fundef_list;ignore (print_t t);printf "=== END ===\n";Prog(fundef_list, t))
