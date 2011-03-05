(*-*-coding:euc-jp-*-*)
open Printf
let limit = ref 1000
let noprint_r = ref false
let escape_r = ref false
let without_iter_r = ref false

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    let e' =
      Elim.f
	(ConstFold.f
	   (Inline.f
	      (Assoc.f
		 (Beta.f e)))) in
      if e = e' then e else
	iter (n - 1) e'

let lexbuf outchan l = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  match !escape_r, !noprint_r, !without_iter_r with
    | true, true, true ->
	(Printf.printf "do escape, no iter \n";
	 Id.counter := 0;
	 Typing.extenv := M.empty;
	 Emit.f outchan
	   (RegAlloc.f
	      (Simm.f
		 (Virtual.f
		    (Closure.f
		       (Alpha.f
			  (KNormal.f
			     (Escape.f
				(Typing.f
				   (Parser.exp Lexer.token l))))))))))
    | true, false, true ->
	(Printf.printf "do escape, no iter \n";
	 Id.counter := 0;
	 Typing.extenv := M.empty;
	 Emit.f outchan
	   (RegAlloc.f
	      (Simm.f
		 (Asm.print "Virtual"
		    (Virtual.f
		       (Closure.f
			  (Alpha.f
			     (KNormal.f
				(Escape.f
				   (Typing.f
				      (Parser.exp Lexer.token l)))))))))))
    | true, true, false ->
	(Printf.printf "do escape, do iter \n";
	 Id.counter := 0;
	 Typing.extenv := M.empty;
	 Emit.f outchan
	   (RegAlloc.f
	      (Simm.f
		 (Asm.print "Virtual"
		    (Virtual.f
		       (Closure.f
			  (iter !limit
			     (Alpha.f
				(KNormal.f
				   (Escape.f
				      (Typing.f
					 (Parser.exp Lexer.token l))))))))))))
    | true, false, false ->
	(Printf.printf "do escape, no iter \n";
	 Id.counter := 0;
	 Typing.extenv := M.empty;
	 Emit.f outchan
	   (RegAlloc.f
	      (Simm.f
		 (Virtual.f
		    (Closure.f
		       (Alpha.f
			  (KNormal.f
			     (Escape.f
				(Typing.f
				   (Parser.exp Lexer.token l))))))))))
    | false, true, true ->
	( Printf.printf "no escape, no iter \n";
	  Id.counter := 0;
	 Esc.default := Esc.Can;
	 Typing.extenv := M.empty;
	 Emit.f outchan
	   (RegAlloc.f
	      (Simm.f
		 (Virtual.f
		    (Closure.f
		       (Alpha.f
			  (KNormal.f
			     (Typing.f
				(Parser.exp Lexer.token l)))))))))
    | false, true, false ->
	(Printf.printf "no escape, do iter\n";
	 Id.counter := 0;
	 Esc.default := Esc.Can;
	 Typing.extenv := M.empty;
	 Emit.f outchan
	   (RegAlloc.f
	      (Simm.f
		 (Virtual.f
		    (Closure.f
		       (iter !limit
			  (Alpha.f
			     (KNormal.f
				(Typing.f
				   (Parser.exp Lexer.token l))))))))))
    | _ ->
	(Printf.printf "else\n";
	 Id.counter := 0;
	 Esc.default := Esc.Can;
	 Typing.extenv := M.empty;
	 Emit.f outchan
	   (RegAlloc.f
	      (Simm.f
		 (Virtual.f
		    (Closure.f
		       (iter !limit
			  (Alpha.f
			     (KNormal.f
				(Typing.f
				   (Parser.exp Lexer.token l))))))))))


let string s = lexbuf stdout (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
    try
      lexbuf outchan (Lexing.from_channel inchan);
      close_in inchan;
      close_out outchan;
    with e -> (close_in inchan; close_out outchan; raise e)


let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let files = ref [] in
    Arg.parse
      [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
       ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
       ("--noprint", Arg.Set noprint_r ,"");
       ("--escape", Arg.Set escape_r,"");
       ("--without_iter", Arg.Set without_iter_r, "")]
       (fun s -> files := !files @ [s])
      ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
	  Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
    List.iter
      (fun f -> ignore (file f))
      !files
