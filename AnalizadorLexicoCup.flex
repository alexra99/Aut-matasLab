/* Sección de declaraciones de JFlex */
import java_cup.runtime.Symbol;
%%
%class AnalizadorLexicoCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char 

/* Inicio de Expresiones regulares */
 NUMERO = [0-9]+
 ENTERO = "int"
 BOOLEAN = "boolean"
 RETORNO = "return"
 NORETORNO = "void"
 VARIABLE = [a-zA-Z] [a-zA-Z0-9_]*
 SALTODELINEA = \n|\r|\r\n
 ASIGNACION = "="
 INCREMENTO = VARIABLE "++"
 DECREMENTO = VARIABLE "--"
 PUNTUACION = ";" | "," |"."
 FOR = "for"
 WHILE = "while"
 DO = "do"
 ASIGNACION = "="
 SUMA = "+"
 RESTA = "-"
 POR = "*"
 ENTRE = "/"
 RELACIONAL = "<"|"<="|">"|">="|"=="|"!="
 LOGICA = "&&"|"||"|"!"
 ESPACIO = " "
 PARENTESISABIERTO = "(" 
 PARENTESISCERRADO = ")"
 LLAVEABIERTA = "{"
 LLAVECERRADA = "}"
 VERDAFALSO = "true" | "false"
 MAIN = "main()"
 PUBLIC = "public"
 STATIC = "static"
 CLASS = "class"

/* Finaliza expresiones regulares */

%%
/* Finaliza la sección de declaraciones de JFlex */

/* Inicia sección de reglas */

// Cada regla está formada por una {expresión} espacio {código}
{INCREMENTO} { return new Symbol(sym.INCREMENTO, yytext()); }

{DECREMENTO} { return new Symbol(sym.DECREMENTO, yytext()); }

{NUMERO} { return new Symbol(sym.NUMERO, yytext()); }

{SALTO} { }

{ASIGNACION} { return new Symbol(sym.ASIGNACION, yytext()); }

{PUNTUACION} { return new Symbol(sym.PUNTUACION, yytext()); }

{FOR} { return new Symbol(sym.FOR, yytext()); }

{WHILE} { return new Symbol(sym.WHILE, yytext()); }

{DO} { return new Symbol(sym.DO, yytext()); }

{ASIGNACION} { return new Symbol(sym.ASIGNACION, yytext()); }

{SUMA} { return new Symbol(sym.SUMA, yytext()); }

{RESTA} { return new Symbol(sym.RESTA, yytext()); }

{POR} { return new Symbol(sym.POR, yytext()); }

{ENTRE} { return new Symbol(sym.ENTRE, yytext()); }

{VERDAFALSO} { return new Symbol(sym.VERDAFALSO, yytext()); }

{LOGICA} { return new Symbol(sym.LOGICA, yytext()); }

{RELACIONAL} { return new Symbol(sym.RELACIONAL, yytext());}

{ESPACIO} { }

{ENTERO} { return new Symbol(sym.ENTERO, yytext()); }

{BOOLEAN} { return new Symbol(sym.BOOLEAN, yytext()); }

{RETORNO} { return new Symbol(sym.RETORNO, yytext()); }

{NORETORNO} { return new Symbol(sym.NORETORNO, yytext()); }

{CLASS} { return new Symbol(sym.CLASS, yytext()); }

{STATIC} { return new Symbol(sym.STATIC, yytext()); }

{PUBLIC} { return new Symbol(sym.PUBLIC, yytext()); }

{PARENTESISABIERTO} { return new Symbol(sym.PARENTESISABIERTO, yytext()); }

{PARENTESISCERRADO} { return new Symbol(sym.PARENTESISCERRADO, yytext()); }

{LLAVEABIERTA} { return new Symbol(sym.LLAVEABIERTA, yytext()); }

{LLAVECERRADA} { return new Symbol(sym.LLAVECERRADA, yytext()); }

{MAIN} { return new Symbol(sym.MAIN, yytext()); }

{VARIABLE} { return new Symbol(sym.VARIABLE, yytext()); }
