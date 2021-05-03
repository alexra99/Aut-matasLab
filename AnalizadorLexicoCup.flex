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
 PUNTUACION = ";" | "," |"."
 BUCLE = "for" | "while" | "do"
 SUMA = "+"
 RESTA = "-"
 POR = "*"
 ENTRE = "/"
 RELACIONAL = "<"|"<="|">"|">="|"=="|"!="
 LOGICA = "&&"|"||"|"!"
 ESPACIO = " "
 PARENTESIS = "(" | ")"
 LLAVE = "{" | "}"
 VERDADERO = "True"
 FALSO = "False"
 MAIN = "main("
 PUBLIC = "public"
 STATIC = "static"
 CLASS = "class"

/* Finaliza expresiones regulares */

%%
/* Finaliza la sección de declaraciones de JFlex */

/* Inicia sección de reglas */

// Cada regla está formada por una {expresión} espacio {código}

{NUMERO} { return new Symbol(sym.NUMERO, yytext()); }

{SALTO} { }

{ASIGNACION} { return new Symbol(sym.ASIGNACION, yytext()); }

{PUNTUACION} { return new Symbol(sym.PUNTUACION, yytext()); }

{BUCLE} { return new Symbol(sym.BUCLE, yytext()); }

{SUMA} { return new Symbol(sym.SUMA, yytext()); }

{RESTA} { return new Symbol(sym.RESTA, yytext()); }

{POR} { return new Symbol(sym.POR, yytext()); }

{ENTRE} { return new Symbol(sym.ENTRE, yytext()); }

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

{PARENTESIS} { return new Symbol(sym.PARENTESIS, yytext()); }

{LLAVE} { return new Symbol(sym.LLAVE, yytext()); }

{VERDADERO} { return new Symbol(sym.VERDADERO, yytext()); }

{FALSO} { return new Symbol(sym.FALSO, yytext()); }

{MAIN} { return new Symbol(sym.MAIN, yytext()); }

{VARIABLE} { return new Symbol(sym.VARIABLE, yytext()); }
