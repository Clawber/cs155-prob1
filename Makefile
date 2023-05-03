a.out: lex.yy.c
	gcc lex.yy.c

lex.yy.c: easy.l
	lex easy.l

# Typically blah.c would already exist, but I want to limit any additional required files