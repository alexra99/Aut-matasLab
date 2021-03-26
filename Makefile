input = "prueba.txt" 

compile_and_run:
	jflex AnalizadorLexico.flex
	javac AnalizadorLexico.java
	java  AnalizadorLexico $(input)

run:
	java  AnalizadorLexico $(input)

clean:
	rm AnalizadorLexico.class
	rm AnalizadorLexico.java