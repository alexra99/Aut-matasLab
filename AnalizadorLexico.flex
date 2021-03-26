/* Sección de declaraciones de JFlex */
%%
%public
%class AnalizadorLexico
%8bit
%standalone
%{
 
 /* Código personalizado */
 // Variable utilizada para guardar la/las última/últimas palabras reconocidas y ayudar a reconocer expresiones 
 public String ultimaPalabra = "";

 // Método para realizar una impresión rápida con el formato solicitado
 public void imprimir(String lexema, String token){
	 System.out.println(token + " => " + lexema);
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
 Main = "main("
 Public = "public"
 Static = "static"
 Class = "class"
 Metodo = {Variable} "("
 
/* Finaliza expresiones regulares */
 
%%
/* Finaliza la sección de declaraciones de JFlex */
 
/* Inicia sección de reglas */
 
// Cada regla está formada por una {expresión} espacio {código}
 
{Numero} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "NÚMERO");
}

{SaltoDeLinea} {
 ultimaPalabra = yytext();
 imprimir("\\n", "NUEVA_LINEA");
}

{Asignacion} {
 ultimaPalabra = yytext();
 imprimir(yytext(),"ASIGNACIÓN");
}

{Puntuacion} {
 ultimaPalabra = yytext();
 imprimir(yytext(),"PUNTUACIÓN");
}

{Bucle} {
 ultimaPalabra = yytext();
 imprimir(yytext(),"BUCLE");
}

{Aritmetica} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "SÍMBOLO");
}

{Logica} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "LÓGICA");
}

{Relacional} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "RELACIONAL");
}

{Espacio} {
 // Ignorar cuando se ingrese un espacio
}

{Entero} {
 if(ultimaPalabra.equals("public static")){
 	ultimaPalabra = ultimaPalabra +" "+ yytext();
 }else{
 	ultimaPalabra = yytext();
 	imprimir(yytext(), "ENTERO");
 }
}

{Boolean} {
 if(ultimaPalabra.equals("public static")){
 	ultimaPalabra = ultimaPalabra +" "+ yytext();
 }else{
 	ultimaPalabra = yytext();
 	imprimir(yytext(), "BOOLEAN");
 }
}

{Retorno} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "RETORNO");
}

{NoRetorno} {
 if(ultimaPalabra.equals("public static")){
 	ultimaPalabra = ultimaPalabra +" "+ yytext();
 }else{
 	ultimaPalabra = yytext();
 	imprimir(yytext(), "VOID");
 }
}

{Class} {
 if(ultimaPalabra.equals("public")) ultimaPalabra = ultimaPalabra +" "+ yytext();
}

{Static} {
 if(ultimaPalabra.equals("public")) ultimaPalabra = ultimaPalabra +" "+ yytext();
}

{Public} {
 ultimaPalabra = yytext();
}

{Parentesis} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "PARENTESIS");
}

{Llave} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "LLAVE");
}

{Verdadero} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "TRUE");
}

{Falso} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "FALSE");
}

{Decremento} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "DECREMENTO");
}

{Incremento} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "INCREMENTO");
}

{Main} {
 ultimaPalabra = yytext();
 imprimir(yytext(), "MAIN");
}
{Metodo} {
 if(ultimaPalabra.equals("public static void") || ultimaPalabra.equals("public static int") || ultimaPalabra.equals("public static boolean")){
 	ultimaPalabra = yytext();
	imprimir(yytext(), "METODO");
 }else{
 	ultimaPalabra = yytext();
 	imprimir(yytext(), "LLAMADA A MÉTODO");
 }
}
{Variable} {
 if(ultimaPalabra.equals("public class")){
 	ultimaPalabra = yytext();
 	imprimir(yytext(), "CLASE");
 }else{
 	ultimaPalabra = yytext();
 	imprimir(yytext(), "VARIABLE");
 }
}
