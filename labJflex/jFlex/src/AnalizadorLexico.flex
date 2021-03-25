/* Sección de declaraciones de JFlex */
%%
%public
%class AnalizadorLexico
%{
 
 /* Código personalizado */
 
 // Se agregó una propiedad para verificar si existen tokens pendientes
 private boolean _existenTokens = false;
 
 public boolean existenTokens(){
 return this._existenTokens;
 }
 
%}
 
 /* Al utilizar esta instrucción, se le indica a JFlex que devuelva objetos del tipo TokenPersonalizado */
%type TokenPersonalizado
 
%init{
 /* Código que se ejecutará en el constructor de la clase */
%init}
 
%eof{
 
 /* Código a ejecutar al finalizar el análisis, en este caso cambiaremos el valor de una variable bandera */
 this._existenTokens = false;
 
%eof}
 
/* Inicio de Expresiones regulares */
 Numero = [0-9]+
 Letra = [A-Za-z]
 Entero = "int"
 Boolean = "boolean"
 Retorno = "return" 
 NoRetorno = "void"
 Variable = {Letra} | {Letra} [a-zA-Z0-9_]+
 SaltoDeLinea = \n|\r|\r\n
 Asignacion = "="
 Puntuacion = ";" | "," |"."
 Bucle = "for" | "while" | "do"
 Aritmetica = "*"|"+"|"-"|"/"
 Relacional = "<"|"<="|">"|">="|"=="|"!="
 Logica = "&&"|"||"|"!"
 Espacio = " "
 Parentesis = "(" | ")"
 Llave = "{" | "}"
 Verdadero = "True" 
 Falso = "False" 
 Incremento = {Variable} "++" | {Variable} "+="
 Decremento = {Variable} "--" | {Variable} "-="
 Clase = "public" {Espacio} "class" [A-Z] | [A-Z] {Variable}
 Metodo = "public static" {Boolean} | {NoRetorno} | {Entero}
 Main = "public static void main()"
 
 
 
/* Finaliza expresiones regulares */
 
%%
/* Finaliza la sección de declaraciones de JFlex */
 
/* Inicia sección de reglas */
 
// Cada regla está formada por una {expresión} espacio {código}
 
{Numero} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "NUMERO");
 this._existenTokens = true;
 return t;
}

{Letra} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "LETRA");
 this._existenTokens = true;
 return t;
}

{SaltoDeLinea} {
 TokenPersonalizado t = new TokenPersonalizado("Enter", "NUEVA_LINEA");
 this._existenTokens = true;
 return t;
}

{Asignacion} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(),"ASIGNACION");
 this._existenTokens = true;
 return t;
}

{Puntuacion} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(),"Puntuacion");
 this._existenTokens = true;
 return t;
}

{Bucle} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(),"BUCLE");
 this._existenTokens = true;
 return t;
}

{Aritmetica} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "SIMBOLO");
 this._existenTokens = true;
 return t;
}

{Logica} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "LOGICA");
 this._existenTokens = true;
 return t;
}

{Relacional} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "RELACIONAL");
 this._existenTokens = true;
 return t;
}

{Espacio} {
 // Ignorar cuando se ingrese un espacio
}

{Entero} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "ENTERO");
 this._existenTokens = true;
 return t;
}

{Boolean} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "BOOLEAN");
 this._existenTokens = true;
 return t;
}

{Retorno} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "RETORNO");
 this._existenTokens = true;
 return t;
}

{NoRetorno} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "VOID");
 this._existenTokens = true;
 return t;
}

{Parentesis} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "PARENTESIS");
 this._existenTokens = true;
 return t;
}

{Llave} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "LLAVE");
 this._existenTokens = true;
 return t;
}

{Verdadero} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "TRUE");
 this._existenTokens = true;
 return t;
}

{Falso} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "FALSE");
 this._existenTokens = true;
 return t;
}

{Decremento} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "DECREMENTO");
 this._existenTokens = true;
 return t;
}

{Incremento} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "INCREMENTO");
 this._existenTokens = true;
 return t;
}

{Clase} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "CLASE");
 this._existenTokens = true;
 return t;
}

{Metodo} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "METODO");
 this._existenTokens = true;
 return t;
}

{Main} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "MAIN");
 this._existenTokens = true;
 return t;
}

{Variable} {
 TokenPersonalizado t = new TokenPersonalizado(yytext(), "VARIABLE");
 this._existenTokens = true;
 return t;
}
















 


