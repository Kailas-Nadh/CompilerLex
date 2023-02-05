%{// word line character count  
#include<stdio.h>
int l=0,w=0,c=0;
%}
%%
[\t ""] w++;
[\n]  l++;w++;
.     c++;
%%
main()
{
yyin=fopen("line.text","r");
yylex();
printf("lines=%d\n words=%d\n characters %d\n",l,w,c);
}
int yywrap()
{
 return 1;
}
