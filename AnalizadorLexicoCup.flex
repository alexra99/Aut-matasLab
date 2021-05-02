/* Sección de declaraciones de JFlex */
import java_cup.runtime.Symbol;
%%
%class AnalizadorLexicoCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char 
%{
 private Symbol symbol (int type, object value){
 	return new Symbol (type, yyline, yycolumn, value);
 }
 private Symbol symbol (int type){
 	return new symbol (type, yyline, yycolumn);
 }
%}

/* Inicio de Expresiones regulares */
 Numero = [0-9]+
 Entero = "int"
 Boolean = "boolean"
 Retorno = "return"
 NoRetorno = "void"
 Variable = [a-zA-Z] [a-zA-Z0-9_]*
 SaltoDeLinea = \n|\r|\r\n
 Asignacion = "="
 Puntuacion = ";" | "," |"."
 Bucle = "for" | "while" | "do"
 Suma = "+"
 Resta = "-"
 Por = "*"
 Entre = "/"
 Relacional = "<"|"<="|">"|">="|"=="|"!="
 Logica = "&&"|"||"|"!"
 Espacio = " "
 Parentesis = "(" | ")"
 Llave = "{" | "}"
 Verdadero = "True"
 Falso = "False"
 Main = "main("
 Public = "public"
 Static = "static"
 Class = "class"

/* Finaliza expresiones regulares */

%%
/* Finaliza la sección de declaraciones de JFlex */

/* Inicia sección de reglas */

// Cada regla está formada por una {expresión} espacio {código}

{Numero} {
 return new Symbol (sym.Numero, yychar, yyline, yytext());
}

{SaltoDeLinea} {
// Ignorar cuando se ingrese un salto de línea
}

{Asignacion} {
 return new Symbol (sym.Asignacion, yychar, yyline, yytext());
}

{Puntuacion} {
 return new Symbol (sym.Puntuacion, yychar, yyline, yytext());
}

{Bucle} {
 return new Symbol (sym.Bucle, yychar, yyline, yytext());
}

{Suma} {
 return new Symbol (sym.Suma, yychar, yyline, yytext());
}

{Resta} {
 return new Symbol (sym.Resta, yychar, yyline, yytext());
}
{Por} {
 return new Symbol (sym.Por, yychar, yyline, yytext());
}
{Entre} {
 return new Symbol (sym.Entre, yychar, yyline, yytext());
}

{Logica} {
 return new Symbol (sym.Logica, yychar, yyline, yytext());
}

{Relacional} {
 return new Symbol (sym.Relacional, yychar, yyline, yytext());
}

{Espacio} {
 // Ignorar cuando se ingrese un espacio
}

{Entero} {
 return new Symbol (sym.Entero, yychar, yyline, yytext());
}

{Boolean} {
 return new Symbol (sym.Boolean, yychar, yyline, yytext());
}

{Retorno} {
 return new Symbol (sym.Retorno, yychar, yyline, yytext());
}

{NoRetorno} {
 return new Symbol (sym.NoRetorno, yychar, yyline, yytext());
}

{Class} {
 return new Symbol (sym.Class, yychar, yyline, yytext());                                                                                         
}

{Static} {
 return new Symbol (sym.Static, yychar, yyline, yytext());
}

{Public} {
 return new Symbol (sym.Public, yychar, yyline, yytext());
}

{Parentesis} {
 return new Symbol (sym.Parentesis, yychar, yyline, yytext());
}

{Llave} {
 return new Symbol (sym.Llave, yychar, yyline, yytext());
}

{Verdadero} {
 return new Symbol (sym.Verdadero, yychar, yyline, yytext());
}

{Falso} {
 return new Symbol (sym.Falso, yychar, yyline, yytext());
}

{Main} {
 return new Symbol (sym.Main, yychar, yyline, yytext());
}

{Variable} {
 return new Symbol (sym.Variable, yychar, yyline, yytext());
}
