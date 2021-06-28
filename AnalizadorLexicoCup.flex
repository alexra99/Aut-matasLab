/* Sección de declaraciones de JFlex */
import java_cup.runtime.Symbol;
%%
%cup
%8bit

/* Inicio de Expresiones regulares */
 NUMERO = [0-9]+
 ENTERO = "int"
 BOOLEAN = "boolean"
 RETORNO = "return"
 VOID = "void"
 VARIABLE = [a-zA-Z] [a-zA-Z0-9_]*
 FUNCION = [a-zA-Z] [a-zA-Z0-9_]* "("
 SALTODELINEA = \n|\r|\r\n
 ASIGNACION = "="
 INCDEC = [a-zA-Z] [a-zA-Z0-9_]* "++" | [a-zA-Z] [a-zA-Z0-9_]* "--"
 PUNTOYCOMA = ";"
 COMA = ","
 FOR = "for"
 WHILE = "while"
 DO = "do"
 ASIGNACION = "="
 ARITMETICA = "+"|"-"|"*"|"/"
 RELACIONAL = "<"|"<="|">"|">="|"=="|"!="
 LOGICA = "&&"|"||"|"!"
 ESPACIO = " "
 PARENTESISABIERTO = "(" 
 PARENTESISCERRADO = ")"
 LLAVEABIERTA = "{"
 LLAVECERRADA = "}"
 VERDAFALSO = "true" | "false"
 PUBLIC = "public"
 STATIC = "static"
 CLASS = "class"

/* Finaliza expresiones regulares */

%%
/* Finaliza la sección de declaraciones de JFlex */

/* Inicia sección de reglas */

// Cada regla está formada por una {expresión} espacio {código}
{INCDEC} { return new Symbol(sym.INCDEC, yytext()); }

{NUMERO} { return new Symbol(sym.NUMERO, yytext()); }

{SALTODELINEA} { }

{ASIGNACION} { return new Symbol(sym.ASIGNACION, yytext()); }

{PUNTOYCOMA} { return new Symbol(sym.PUNTOYCOMA, yytext()); }

{COMA} {return new Symbol(sym.COMA, yytext()); }

{FOR} { return new Symbol(sym.FOR, yytext()); }

{WHILE} { return new Symbol(sym.WHILE, yytext()); }

{DO} { return new Symbol(sym.DO, yytext()); }

{ASIGNACION} { return new Symbol(sym.ASIGNACION, yytext()); }

{ARITMETICA} { return new Symbol(sym.ARITMETICA, yytext()); }

{VERDAFALSO} { return new Symbol(sym.VERDAFALSO, yytext()); }

{LOGICA} { return new Symbol(sym.LOGICA, yytext()); }

{RELACIONAL} { return new Symbol(sym.RELACIONAL, yytext());}

{ESPACIO} { }

{ENTERO} { return new Symbol(sym.ENTERO, yytext()); }

{BOOLEAN} { return new Symbol(sym.BOOLEAN, yytext()); }

{RETORNO} { return new Symbol(sym.RETORNO, yytext()); }

{VOID} { return new Symbol(sym.VOID, yytext()); }

{CLASS} { return new Symbol(sym.CLASS, yytext()); }

{STATIC} { return new Symbol(sym.STATIC, yytext()); }

{PUBLIC} { return new Symbol(sym.PUBLIC, yytext()); }

{PARENTESISABIERTO} { return new Symbol(sym.PARENTESISABIERTO, yytext()); }

{PARENTESISCERRADO} { return new Symbol(sym.PARENTESISCERRADO, yytext()); }

{LLAVEABIERTA} { return new Symbol(sym.LLAVEABIERTA, yytext()); }

{LLAVECERRADA} { return new Symbol(sym.LLAVECERRADA, yytext()); }

{FUNCION} { return new Symbol(sym.FUNCION, yytext()); }

{VARIABLE} { return new Symbol(sym.VARIABLE, yytext()); }