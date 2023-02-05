%{//punctuation separation
int c=0;
char a[50][50];
int i,j;
%}
PUNC ";"|","
%%
{PUNC} strcpy(a[c++],yytext);
%%
main()
{
 yyin=fopen("comment.c","r");
 yylex();
 for(i=0;i<c;i++)
 {
  for(j=i+1;j<c;j++)
  {
   if(strcmp(a[i],a[j]==0))
   strcpy(a[j],"");
  }
 }
for(i=0;i<c;i++)
printf("%s\n",a[i]);
 return 1;
}
int yywrap()
{
 return 1;
}
