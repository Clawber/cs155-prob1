a.out: lex.yy.c
	gcc lex.yy.c

lex.yy.c: easy_comp.l
	lex easy_comp.l

# Typically blah.c would already exist, but I want to limit any additional required files