%{
#include<stdlib.h>
%}
letter [A-Z|a-z]
digit [0-9]
keyword int|float|double|char
%%
{keyword}" "{letter}({letter}|{digit})*";" printf("accept");
. printf("error\n");
%%
int main(){
yylex();
}
int yywrap(){
return 1;
}
