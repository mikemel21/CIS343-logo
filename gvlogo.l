%option noyywrap
%{
#include <stdio.h>
#include <stdlib.h>
#include "gvlogo.tab.h"

extern void yyerror(const char* s);
%}

%%
penup               { return PENUP; }
pendown             { return PENDOWN; }
print               { return PRINT; }
\"[^\"]*\"          { yylval.s = yytext; return STRING; }
;                   { return SEP; }

[ \t\r\n]			;
.			{ yyerror("Lexing Syntax error.\n"); } 

%%
