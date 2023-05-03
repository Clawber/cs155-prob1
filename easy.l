%option noyywrap

%{
      #include <stdio.h>
      #include <stdlib.h>
      #include <string.h>
      int lineno = 1; // initialize to 1
      void ret_print(char *token_type);
      void yyerror();
%}

/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int count = 0;
%}


alpha       [a-zA-Z]
digit       [0-9]
alnum       {alpha}|{digit}
printable   [ -~] 

STRING      \"{printable}*\"|\'{printable}*\'

 
%%

{STRING}                          { ret_print("T_string"); }
"//".*                              /*consume comments */
[+-]?[1-9]{digit}*|0                { ret_print("T_int"); }
(<-)                                { ret_print("T_gets"); }
(\+)|(-)|(\*)|(\/)|(\^)             { ret_print("T_arithOp"); }
(and)|(or)|(not)                    { ret_print("T_logOp"); }
(<)|(≤)|(=)|$|(≠)|(>)|(≥)           { ret_print("T_relOp"); }
(floor)|(ceiling)|(mod)|(log_)      { ret_print("T_misc_math"); }
(go\ to)                            { ret_print("T_goto"); }
exit                                { ret_print("T_exit"); }
if                                  { ret_print("T_if"); }
then                                { ret_print("T_then"); }
(else\ if)                          { ret_print("T_elseif"); }
else                                { ret_print("T_else"); }
endcase                             { ret_print("T_endcase"); }
case                                { ret_print("T_case"); }
do                                  { ret_print("T_do"); }
endwhile                            { ret_print("T_endwhile"); }
while                               { ret_print("T_while"); }
loop                                { ret_print("T_loop"); }
forever                             { ret_print("T_forever"); }
endfor                              { ret_print("T_endfor"); }
for                                 { ret_print("T_for"); }
repeat                              { ret_print("T_repeat"); }
until                               { ret_print("T_until"); }
(input)                             { ret_print("T_input"); }
(output)                            { ret_print("T_output"); }
to                                  { ret_print("T_to"); }
by                                  { ret_print("T_by"); }
array                               { ret_print("T_array"); }
node                                { ret_print("T_node"); }
call                                { ret_print("T_call"); }
return                              { ret_print("T_return"); }
stop                                { ret_print("T_stop"); }
end                                 { ret_print("T_end"); }
\[                                  { ret_print("T_open_bracket"); }
\]                                  { ret_print("T_close_bracket"); }
\(                                  { ret_print("T_open_paren"); }
\)                                  { ret_print("T_close_paren"); }
(:)                                 { ret_print("T_colon"); }
(,)                                 { ret_print("T_comma"); }
[eπ]                                { ret_print("T_math_constant"); }
[a-zA-Z_][0-9a-zA-Z_]*              { ret_print("T_var"); }
[ \n\t]*                            /* consume whitespace */
"."                                 { ret_print("T_dot"); }
                                          
%%



/*** Code Section prints the number of
capital letter present in the given input***/
void ret_print(char *token_type){
    printf("< %s\t %s >\n", yytext, token_type);
}

//int yywrap(){}
int main(){
 
// Explanation:
// yywrap() - wraps the above rule section
/* yyin - takes the file pointer
          which contains the input*/
/* yylex() - this is the main flex function
          which runs the Rule Section*/
// yytext is the text in the buffer
 
// Uncomment the lines below
// to take input from file
// FILE *fp;
// char filename[50];
// printf("Enter the filename: \n");
// scanf("%s",filename);
// fp = fopen(filename,"r");
// yyin = fp;
 
yylex();
 
return 0;
}