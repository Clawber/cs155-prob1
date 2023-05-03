/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int count = 0;
%}


 
/*** Rule Section has three rules, first rule
matches with capital letters, second rule
matches with any character except newline and
third rule does not take input after the enter***/
%%

[+-]?[1-9][0-9]*|0                  {printf("<%s, T_int >\n", yytext);}
(<-)                                {printf("<%s, T_gets >\n", yytext);}
(\+)|(-)|(\*)|(\/)|(\^)             {printf("<%s, T_arithmetic_operator >\n", yytext);}
(and)|(or)|(not)                    {printf("<%s, T_logical_operator >\n", yytext);}
(<)|(≤)|(=)|$|(≠)|(>)|(≥)           {printf("<%s, T_relational_operator >\n", yytext);}
(floor)|(ceiling)|(mod)|(log_)      {printf("<%s, T_misc_math_notations >\n", yytext);}
(go\ to)                             {printf("<%s, T_goto >\n", yytext);}
exit                                {printf("<%s, T_exit >\n", yytext);}
if                                  {printf("<%s, T_if >\n", yytext);}
then                                {printf("<%s, T_then >\n", yytext);}
(else\ if)                           {printf("<%s, T_elseif >\n", yytext);}
else                                {printf("<%s, T_else >\n", yytext);}
endcase                             {printf("<%s, T_endcase >\n", yytext);}
case                                {printf("<%s, T_case >\n", yytext);}
do                                  {printf("<%s, T_do >\n", yytext);}
endwhile                            {printf("<%s, T_endwhile >\n", yytext);}
while                               {printf("<%s, T_while >\n", yytext);}
loop                                {printf("<%s, T_loop >\n", yytext);}
forever                             {printf("<%s, T_forever >\n", yytext);}
endfor                              {printf("<%s, T_endfor >\n", yytext);}
for                                 {printf("<%s, T_for >\n", yytext);}
repeat                              {printf("<%s, T_repeat >\n", yytext);}
until                               {printf("<%s, T_until >\n", yytext);}
(input)                             {printf("<%s, T_input >\n", yytext);}
(output)                            {printf("<%s, T_output >\n", yytext);}
to                                  {printf("<%s, T_to >\n", yytext);}
by                                  {printf("<%s, T_by >\n", yytext);}
array                               {printf("<%s, T_array >\n", yytext);}
node                                {printf("<%s, T_node >\n", yytext);}
call                                {printf("<%s, T_call >\n", yytext);}
return                              {printf("<%s, T_return >\n", yytext);}
stop                                {printf("<%s, T_stop >\n", yytext);}
end                                 {printf("<%s, T_end >\n", yytext);}
\[                                  {printf("<%s, T_open_bracket >\n", yytext);}
\]                                  {printf("<%s, T_close_bracket >\n", yytext);}
\(                                  {printf("<%s, T_open_paren >\n", yytext);}
\)                                  {printf("<%s, T_close_paren >\n", yytext);}
(:)                                 {printf("<%s, T_colon >\n", yytext);}
(,)                                 {printf("<%s, T_comma >\n", yytext);}
[eπ]                                {printf("<%s, T_math_constant >\n", yytext);}
[a-zA-Z_][0-9a-zA-Z_]*              {printf("<%s, T_var >\n", yytext);}


%%



/*** Code Section prints the number of
capital letter present in the given input***/
int yywrap(){}
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
printf("\nNumber of Capital letters "
      "in the given input - %d\n", count);
 
return 0;
}