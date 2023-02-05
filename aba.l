%{
%}
%%
(a|b)*aba {printf("string is accepted");}
.* {printf("string not accepted");}
%%
int main()
{
 yylex();
 return 1;
}
int yywrap()
{
 return 1;
}
