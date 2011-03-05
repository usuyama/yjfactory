(*-*- coding:euc-jp-*-*)
{
(* lexerが利用する変数、関数、型などの定義 *)
open Parser
open Type
}

(* 正規表現の略記 *)
let space = [' ' '\t' '\r']
let digit = ['0'-'9']
let lower = ['a'-'z']
let upper = ['A'-'Z']

rule token = parse
| space+
    { token lexbuf }
| '\n'
    { Syntax.count_line := 1 + !Syntax.count_line;Syntax.symbol_start := Lexing.lexeme_start lexbuf;token lexbuf}
| "(*"
    { comment lexbuf; (* ネストしたコメントのためのトリック *)
      token lexbuf }
| '('
    { LPAREN }
| ')'
    { RPAREN }
| "true"
    { BOOL(true) }
| "false"
    { BOOL(false) }
| "not"
    { NOT }
| "_stack_map_size"
    { SMS }
| "_stack_list_size"
    { SLS }
| "_sp"
    { SP }
| "_hp"
    { HP }
| digit+ (* 整数を字句解析するルール (caml2html: lexer_int) *)
    { INT(int_of_string (Lexing.lexeme lexbuf)) }
| digit+ ('.' digit*)? (['e' 'E'] ['+' '-']? digit+)?
    { FLOAT(float_of_string (Lexing.lexeme lexbuf)) }
| '-' (* -.より後回しにしなくても良い? 最長一致? *) (* <- 最長一致なのでok。それでも、ふるいきれない場合のみ、上にあるものが優先される(そんな場合ある?) *)
    { MINUS }
| '*' (* +.より後回しにしなくても良い? 最長一致? *)
    { MUL }
| '/'
    { DIV }
| '+'
    { PLUS }
| "int_of_float"
   { F2I }
| "float_of_int"
   { I2F }
| "sqrt"
   { FSqrt }
| "fabs"
   { FAbs }
| "fneg"
   { FNeg }
| "floor"
   { Floor }
| "print_char"
   { Sendc }
| "-."
    { MINUS_DOT }
| "+."
    { PLUS_DOT }
| "*."
    { AST_DOT }
| "/."
    { SLASH_DOT }
| '='
    { EQUAL }
| "<>"
    { LESS_GREATER }
| "<="
    { LESS_EQUAL }
| ">="
    { GREATER_EQUAL }
| '<'
    { LESS }
| '>'
    { GREATER }
| "if"
    { IF }
| "then"
    { THEN }
| "else"
    { ELSE }
| "let"
    { LET }
| "in"
    { IN }
| "rec"
    { REC }
| ','
    { COMMA }
| '_'
    { IDENT(Id.gentmp Type.Unit) }
| "Array.create" (* [XX] ad hoc *)
    { ARRAY_CREATE }
| '.'
    { DOT }
| "<-"
    { LESS_MINUS }
| ';'
    { SEMICOLON }
| eof
    { EOF }
| lower (digit|lower|upper|'_')* (* 他の「予約語」より後でないといけない *)
    { IDENT(Lexing.lexeme lexbuf) }
| _
    { failwith
	(Printf.sprintf "unknown token %s near characters %d-%d, L:%d, R:%d"
	   (Lexing.lexeme lexbuf)
	   (Lexing.lexeme_start lexbuf)
	   (Lexing.lexeme_end lexbuf)
	   (!Syntax.count_line)
	   (Lexing.lexeme_start lexbuf - !Syntax.symbol_start)) }
and comment = parse
| '\n'
    { Syntax.count_line := 1 + !Syntax.count_line;Syntax.symbol_start := Lexing.lexeme_start lexbuf;comment lexbuf}
| "*)"
    { () }
| "(*"
    { comment lexbuf;
      comment lexbuf }
| eof
    { Format.eprintf "warning: unterminated comment@." }
| _
    { comment lexbuf }
