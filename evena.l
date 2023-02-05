%{//even no.of a's
%}
%%
((b*ab*ab*)*) {printf("string is accepted");}
.* {printf("string not accepted");}
%%
main()
{
 yylex();
 return 1;
}
int yywrap()
{
 return 1;
}
