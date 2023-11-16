%option noyywrap
%{
#include <stdio.h>
#include <stdlib.h>
#include "gvlogo.tab.h"

extern void yyerror(const char* s);
%}

%%
penup                                           { return PENUP; }
pendown                                         { return PENDOWN; }
print                                           { return PRINT; }
\"[^\"]*\"                                      { yylval.s = yytext; return STRING; }
move                                            { return MOVE; }
[0-9]+\.[0-9]+                                  { yylval.f = atof(yytext); return NUMBER; }
[0-9]+                                          { yylval.f = atof(yytext); return NUMBER; }
color                                           { return CHANGE_COLOR; }
clear                                           { return CLEAR; }
turn                                            { return TURN; }
save                                            { return SAVE; }
[a-zA-z0-9./_]+\.bmp                            { yylval.s = yytext; return STRING; }
goto                                            { return GOTO; }
where                                           { return WHERE; }
end                                             { return END; }
"+"                                             { return PLUS; }
"-"                                             { return SUB; }
"*"                                             { return MULT; }
"/"                                             { return DIV; }
[A-Za-z0-9]                                     { yylval.s = yytext; return STRING; }
[A-Z]\$=                                        { yylval.i = yytext[0] - 65; return VARASSIGN; }
[A-Z]\$                                         { yylval.i = yytext[0] - 65; return VAR; }


;                               { return SEP; }
[ \t\r\n]			            ;
.			                    { printf("error in: %c\n", yytext[0]); yyerror("Lexing Syntax error.\n"); } 

%%
