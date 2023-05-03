a.out: lex.yy.c
	gcc lex.yy.c

lex.yy.c: easy.lex
	lex easy.lex
