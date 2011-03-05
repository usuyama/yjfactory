(*-*-coding:euc-jp-*-*)
(* translation into SPARC assembly with infinite number of virtual registers *)

open Asm

exception Escape_error

(* xtsは多分, (Id.t * Type.t) list *)
let classify xts ini addf addi = (* なんか関数addiとaddfを適用してる *)
  List.fold_left (* fold_left : ('a -> 'b -> 'a) -> 'a -> 'b list -> 'a = <fun> *)
    (fun acc (x, t) ->
       match t with
	 | Type.Unit -> acc
	 | Type.Float -> addf acc x
	 | _ -> addi acc x t)
    ini
    xts

let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))

let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->
      let offset = offset in
      (offset + 1, addf x offset acc)) (* double wordじゃなくなったので、同じ *)
    (fun (offset, acc) x t ->
      (offset + 1, addi x t offset acc))

let const_env = ref []

let rec g env = function (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
  | Closure.Unit -> Ans(Nop)
  | Closure.Int(i) -> Ans(Set(i))
  | Closure.Float(d) -> Ans(SetF(d))
  | Closure.Neg(x) -> Ans(Neg(x))
  | Closure.SMS -> Ans(SMS)
  | Closure.SLS -> Ans(SLS)
  | Closure.HP -> Ans(HP)
  | Closure.SP -> Ans(SP)
  | Closure.Add(x, y) -> Ans(Add(x, V(y)))
  | Closure.Sub(x, y) -> Ans(Sub(x, V(y)))
  | Closure.SRA(x, y) -> Ans(SRA(x, y))
  | Closure.Mul(x, y) -> Ans(Mul(x, V(y)))
  | Closure.FNeg(x) -> Ans(FNeg(x))
  | Closure.FSqrt(x) -> Ans(FSqrt(x))
  | Closure.FAbs(x) -> Ans(FAbs(x))
  | Closure.F2I(x) -> Ans(F2I(x))
  | Closure.I2F(x) -> Ans(I2F(x))
  | Closure.Floor(x) -> Ans(Floor(x))
  | Closure.Sendc(x) -> Ans(Sendc(x))
  | Closure.FAdd(x, y) -> Ans(FAdd(x, y))
  | Closure.FSub(x, y) -> Ans(FSub(x, y))
  | Closure.FMul(x, y) -> Ans(FMul(x, y))
  | Closure.FDiv(x, y) -> Ans(FDiv(x, y))
  | Closure.IfEq(x, y, e1, e2) ->
      (match M.find x env with
	 | Type.Bool | Type.Int -> Ans(IfEq(x, y, g env e1, g env e2))
	 | Type.Float ->
	     (let f1 = Id.genid "t" in
	      let f2 = Id.genid "t" in
		Let((f1, Type.Int), MovFToI(x), Let((f2, Type.Int), MovFToI(y), Ans(IfEq(f1, f2, g env e1, g env e2)))))
	 | _ -> failwith "equality supported only for bool, int and float")
  | Closure.IfLE(x, y, e1, e2) ->
      (match M.find x env with
	 | Type.Bool | Type.Int -> Ans(IfLE(x, y, g env e1, g env e2))
	 | Type.Float -> Ans(IfFLE(x, y, g env e1, g env e2))
	 | _ -> failwith "inequality supported only for bool, int, and float")
  | Closure.Let((x, t1), Closure.Int(i), e2) ->
      const_env := (x, i) :: !const_env; (* Array.createでサイズが定数かどうかを判断するため。α変換されているので、これでいい *)
      let e1' = g env (Closure.Int(i)) in
      let e2' = g (M.add x t1 env) e2 in
	concat e1' (x, t1) e2' (* e1の後ろにe2をつなげる *)
  | Closure.Let((x, t1), e1, e2) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      concat e1' (x, t1) e2' (* e1の後ろにe2をつなげる *)
  | Closure.Var(x) ->
      (match M.find x env with
	 | Type.Unit -> Ans(Nop)
	 | Type.Float -> Ans(FMov(x))
	 | _ -> Ans(Mov(x)))
  | Closure.MakeCls((x, t, Esc.Never), { Closure.entry = l; Closure.actual_fv = ys }, e2) -> (* クロージャの生成 (caml2html: virtual_makecls) *)
      (* Closureのアドレスをセットしてから、自由変数の値をストア *)
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
	expand
	  (List.map (fun y -> (y, M.find y env)) ys)
	  (1, e2')
	  (fun y offset store_fv -> seq(StackStF(y, x, offset), store_fv))
	  (fun y _ offset store_fv -> seq(StackSt(y, x, offset), store_fv)) in
	Let((x, t), GetStackTop,
	    let z = Id.genid "l" in
	      Let((z, Type.Int), SetL(l),
		  seq(StackSt(z, x, 0),
		      store_fv)))
  | Closure.MakeCls((x, t, _), { Closure.entry = l; Closure.actual_fv = ys }, e2) -> (* クロージャの生成 (caml2html: virtual_makecls) *)
      (* Closureのアドレスをセットしてから、自由変数の値をストア *)
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
	expand
	  (List.map (fun y -> (y, M.find y env)) ys)
	  (1, e2')
	  (fun y offset store_fv -> seq(StF(y, x, offset), store_fv))
	  (fun y _ offset store_fv -> seq(St(y, x, offset), store_fv)) in
      Let((x, t), Mov(reg_hp),
	  Let((reg_hp, Type.Int), Add(reg_hp, C(offset)),
	      let z = Id.genid "l" in
	      Let((z, Type.Int), SetL(l),
		  seq(St(z, x, 0),
		      store_fv))))
  | Closure.AppCls(x, ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
	Ans(CallCls(x, int, float))
  | Closure.AppDir(Id.L(x), ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
	Ans(CallDir(Id.L(x), int, float))
  | Closure.Tuple(xs, Esc.Never) -> (* 組の生成 (caml2html: virtual_tuple) *)
      let y = Id.genid "t" in
      let (offset, store) =
	expand
	  (List.map (fun x -> (x, M.find x env)) xs)
	  (0, Ans(Mov(y)))
	  (fun x offset store -> seq(StackStF(x, y, offset), store))
	  (fun x _ offset store -> seq(StackSt(x, y, offset), store)) in
	Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), GetStackTop,
	    store)
    | Closure.Tuple(xs, _) -> (* 組の生成 (caml2html: virtual_tuple) *)
      let y = Id.genid "t" in
      let (offset, store) =
	expand
	  (List.map (fun x -> (x, M.find x env)) xs)
	  (0, Ans(Mov(y)))
	  (fun x offset store -> seq(StF(x, y, offset), store))
	  (fun x _ offset store -> seq(St(x, y, offset), store)) in
	Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Mov(reg_hp),
	    Let((reg_hp, Type.Int), Add(reg_hp, C(offset)),
		store))
  | Closure.CreateArray(length, initial, t, Esc.Never) ->
      (try
	(let x = (List.assoc length (!const_env)) in
	 let y = Id.genid "t" in
	 let store =
	   (let rec loop i acc =
	      (if i < 0 then acc else
		 (match t with
		    | Type.Float -> loop (i - 1) (seq(StackStF(initial, y, i), acc))
		    | _ -> loop (i - 1) (seq(StackSt(initial, y, i), acc))))
	    in loop (x - 1) (Ans(Mov(y))))
	 in
	   (Let((y, Type.Array(t)), GetStackTop,
		store)))
      with Not_found -> (* 配列のサイズが決まってないと、スタックには置けない *)
	(g env (Closure.CreateArray(length, initial, t, Esc.Can))))
  | Closure.CreateArray(length, initial, Type.Float, _) ->
      let base = Id.genid "t" in
	Let((base, Type.Array(Type.Float)), Mov(reg_hp),
	    Let((reg_hp, Type.Int), Add(reg_hp, V(length)),
		Ans(CallDir(Id.L("yj.create_float_array_loop"),[length;base],[initial]))))
  | Closure.CreateArray(length, initial, _, _) ->
      let base = Id.genid "t" in
	Let((base, Type.Array(Type.Int)), Mov(reg_hp),
	    Let((reg_hp, Type.Int), Add(reg_hp, V(length)),
		Ans(CallDir(Id.L("yj.create_array_loop"),[length;initial;base],[]))))
  | Closure.LetTuple(xts, y, e2) -> (* let (xts) = y in e2 *)
      let s = Closure.fv e2 in
      let (offset, load) =
	expand
	  xts
	  (0, g (M.add_list xts env) e2)
	  (fun x offset load ->
	    if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
	    flet(x, LdF(y, offset), load))
	  (fun x t offset load ->
	    if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
	    Let((x, t), Ld(y, offset), load)) in
      load
  | Closure.Get(x, y) -> (* 配列の読み出し (caml2html: virtual_get) *)
      let addr = Id.genid "t" in
	(match M.find x env with
	   | Type.Array(Type.Unit) -> Ans(Nop)
	   | Type.Array(Type.Float) ->
	       Let((addr, Type.Int), Add(x, V(y)), Ans(LdF(addr, 0)))
	   | Type.Array(_) ->
	       Let((addr, Type.Int), Add(x, V(y)), Ans(Ld(addr, 0)))
	   | _ -> assert false)
  | Closure.Put(x, y, z) ->
      let addr = Id.genid "t" in
	(match M.find x env with
	   | Type.Array(Type.Unit) -> Ans(Nop)
	   | Type.Array(Type.Float) ->
	       Let((addr, Type.Int), Add(x, V(y)), Ans(StF(z, addr, 0)))
	   | Type.Array(_) ->
	       Let((addr, Type.Int), Add(x, V(y)), Ans(St(z, addr, 0)))
	   | _ -> assert false)
  | Closure.ExtArray(Id.L(x)) -> Ans(SetL(Id.L("yj_" ^ x)))

(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
let h { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
  let (int, float) = separate yts in (* closureのアドレスをセットした後、引数を展開 *)
  let (offset, load) =
    expand
      zts
      (1, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load -> flet(z, LdF(reg_cl, offset), load))
      (fun z t offset load -> Let((z, t), Ld(reg_cl, offset), load)) in
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

let create_array_loop = (* length, initial, base pointer *)
  let length = Id.genid "t" in
  let next_length = Id.genid "t" in
  let initial = Id.genid "t" in
  let base_pointer = Id.genid "t" in
  let target_pointer = Id.genid "t" in
  let body =
    Ans(IfEq(reg_zero, length, Ans(Mov(base_pointer)),
	     Let((next_length, Type.Int), Sub(length, C(1)),
		 Let((target_pointer, Type.Int), Add(base_pointer, V(next_length)),
		     seq(St(initial, target_pointer, 0),
			 Ans(CallDir(Id.L("yj.create_array_loop"),[next_length;initial; base_pointer],[])))))))
  in { name = Id.L("yj.create_array_loop");args = [length; initial; base_pointer;]; fargs = [];body = body; ret = Type.Array(Type.Int) }

let create_float_array_loop = (* length, initial, base pointer *)
  let length = Id.genid "t" in
  let next_length = Id.genid "t" in
  let initial = Id.genid "t" in
  let base_pointer = Id.genid "t" in
  let target_pointer = Id.genid "t" in
  let body =
    Ans(IfEq(reg_zero, length, Ans(Mov(base_pointer)),
	     Let((next_length, Type.Int), Sub(length, C(1)),
		 Let((target_pointer, Type.Int), Add(base_pointer, V(next_length)),
		     seq(StF(initial, target_pointer, 0),
			 Ans(CallDir(Id.L("yj.create_float_array_loop"),[next_length;base_pointer],[initial])))))))
  in { name = Id.L("yj.create_float_array_loop");args = [length; base_pointer;]; fargs = [initial];body = body; ret = Type.Array(Type.Float) }


(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f (Closure.Prog(fundefs, e)) =
  let fundefs = List.map h fundefs in
  let fundefs = List.append fundefs [create_array_loop; create_float_array_loop] in
  let e = g M.empty e in
  Prog(fundefs, e)
