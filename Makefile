all:
	jflex AnalizadorLexico.flex
	javac AnalizadorLexico.java
	java AnalizadorLexico
