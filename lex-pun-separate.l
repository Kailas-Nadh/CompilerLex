%{
#include<string.h>
int c=0;
char a[50][50];
int i,j;
%}
PUNC ";"|","
%%
{PUNC} strcpy(a[c++],yytext);
.;
%%
int main()
{
yyin=fopen("comment.txt","r");
yylex();
for(i=0;i<c;i++)
printf("%s\n",a[i]);
return 1;
}
int yywrap()
{
return 1;
}
