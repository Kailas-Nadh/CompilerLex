%{
int flag=1;
%}
%%
"/*" {flag=0;}
"*/" {flag=1;}
"//"[A-Za-z0-9 ]* {printf(yytext);}
. {if (flag==0) printf(yytext);}
%%
main()
{
 yyin=fopen("comment.txt","r");
 yylex();
if (flag==0) printf("error");
 return 1;
}
int yywrap()
{
 return 1;
}
