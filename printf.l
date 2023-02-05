%{
#include<stdio.h>
#include <ctype.h>
int k=0;
%}
fsp %d|%c|%f|%s
id [a-zA-Z][a-zA-Z0-9]*
%%
"printf("["]({fsp}*|.*)*["]","?{id}*")"";" {k=1;}
.* ;
%%
main()
{
yyin=fopen("k.txt","r");
yylex();
if (k==1) printf("syntax correct");
else printf("syntax wrong");
return 1;
}
int yywrap()
{
return 1;
}

