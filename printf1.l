%{
#include<stdio.h>
#include<ctype.h>
int i=0,j=0;
%}
a "%d"|"%f"|"%c"|"%s"
id [a-zA-Z][a-zA-Z0-9]*
%%
printf\((\"({a}*|.*)*\"(,{id})*\))\; {for(i=0;i<yyleng;i++) {
if(yytext[i]=='%')
j++;
if(yytext[i]==',')
j--;
}
if(j==0)
printf("Correct..!!");
else
printf("Incorrect..!!");
}
%%
main()
{
yyin=fopen("k.txt","r");
yylex();
}

int yywrap()
{
return 1;
}      

