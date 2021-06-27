input = "prueba.txt" 

compile_and_run:
	if [-a AnalizadorLexicoCup.java]; then rm AnalizadorLexicoCup.java; fi
	jflex AnalizadorLexicoCup.flex
	javac AnalizadorLexicoCup.java
	java  AnalizadorLexicoCup $(input)

run:
	java  AnalizadorLexicoCup $(input)

clean:
	rm AnalizadorLexicoCup.class
	rm AnalizadorLexicoCup.java
