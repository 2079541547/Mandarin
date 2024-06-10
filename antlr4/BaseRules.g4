grammar BaseRules;

WS: [ \t\r\n]+ -> skip;
COMMENT: '//' ~[\n]* '\n' | '/*' .*? '*/' -> skip;
LINE_COMMENT: '//' ~[\n]* '\n' -> channel(HIDDEN);
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
INT_LITERAL: [0-9]+;
FLOAT_LITERAL: INT_LITERAL '.' INT_LITERAL? EXPONENT?;
STRING_LITERAL: '"' .*? '"';
