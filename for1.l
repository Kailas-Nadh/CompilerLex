%{
int f=0;
%}
op "+"|"-"|"*"|"/"
letter [A-Za-z]*
num [0-9]+
unary ++|--
relop ">"|"<"|"=="|">="|"<="
id ({letter})({letter}|{num})*
factor {id}|{num}
exp ({factor}{op}{factor}|{factor}
initial ({id} "=" {exp})
condition {id}{relop}{factor}
incr {unary}{id}|{id}{unary}
%%
"for("{initial}";"{condition}";"{incr}")" {f=1;}
. ;
%%
int main(){
yyin=fopen("for.c","r");
yylex();
if(f==1) 
printf("syntax correct");
else
printf("incorrect");
return 1;
}
int yywrap()
{
  return 1;
}
