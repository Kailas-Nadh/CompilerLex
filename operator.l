%{//operator separation
char a[50][50];
int c=0,i,j;
%}
OP "+"|"-"|"/"|"*"|"<"|">"|"<="|">="|"<>"|"&"|"^"
%%
{OP} {strcpy(a[c++],yytext);}
.|\n printf(" ");
%%
main()
{
 yyin=fopen("comment.txt","r");
 yylex();
 fclose(yyin);
 for(i=0;i<c;i++)
 {
  for(j=i+1;j<c;j++)
  {
   if(strcmp(a[i],a[j])==0)
   strcpy(a[i]," ");
  }
 }
 for (i=0;i<c;i++)
   printf("%s ",a[i]);
}
int yywrap()
{
 return 1;
}
