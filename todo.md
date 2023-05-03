### Current


[ ] ensure all test cases
  [ ] floats

[x] README.md finalize


### Done

[x] test cases copy 

[x] flex tutorial 
  [x] copy files
[x] open past 155 pset part 1
[x] Maam festin access to github repo


[x] copy paste the regex codes
[x] print tokens  

[x] makefile
  can execute these commands:
    lex easy.l
    gcc lex.yy.c
  
[x] solved function not defined thing

[x] printing whiteline (prints enter insteead of "\n")
    or are we supposed to consume ??? -> consume


[x] handle strings
[x] git merge + push
[x] check uvle sample
[x] else if handle int (tokens with     spaces) and float
[x] token classes examples (c)


### Backburner



[ ] (after finishing) pass github link
[ ] lex definitions


#### Bonus tasks
[ ] parenthesis to brackets (unified tokens)


removed rules:
  [a-zA-Z][0-9a-zA-Z_]*\(             {printf("<%s, T_function >\n", yytext);}



### compiling instructions
lex easy.lex
gcc lex.yy.c


./a.out < test_cases/bin_search.easy 
./a.out < test_cases/hanoi.easy 
./a.out < test_cases/insertion_sort.easy 
./a.out < test_cases/list_invert.easy 
./a.out < test_cases/reserved_test.easy 
