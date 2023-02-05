%{//keyword separation
#include<string.h>
char a[50][50];
int c=0,i,j;
%}
KEY include|if|then|else|it|float|double|do|while|switch|for|case|longint|printf|scanf
%%
{KEY} {strcpy(a[c++],yytext);}
.|\n printf(" ");
%%
main()
{
 yyin=fopen("comment.txt","r");
 yylex();
 fclose(yyin);
 
 for (i=0;i<c;i++)
   printf("%s ",a[i]);
}
int yywrap()
{
 return 1;
}
