input = "prueba.txt" 

compile_and_run:
	if [-a AnalizadorLexico.java]; then rm AnalizadorLexico.java; fi
	jflex AnalizadorLexico.flex
	javac AnalizadorLexico.java
	java  AnalizadorLexico $(input)

run:
	java  AnalizadorLexico $(input)

clean:
	rm AnalizadorLexico.class
	rm AnalizadorLexico.java