grammar Mandarin;


/* 注释定义 */
SingleLineComment: '//' (~[\r\n]* -> channel(HIDDEN));
MultiLineComment: '/*' (COMMENT_CONTENT | MultiLineComment)*? '*/' -> channel(HIDDEN);
fragment COMMENT_CONTENT
    : ~['*']*
    | '*' ~'/'
    ;

/* 符号定义 */
PLUS : '+' ;
MINUS : '-' ;
MULTIPLY : '*' ;
DIVIDE : '/' ;
MOD : '%' ;
ASSIGN : '=' ;
LT : '<' ;
GT : '>' ;
LTE : '<=' ;
GTE : '>=' ;
EQ : '==' ;
NEQ : '!=' ;
AND : '&&' ;
OR : '||' ;
NOT : '!' ;
LPAREN : '(' ;
RPAREN : ')' ;
LBRACE : '{' ;
RBRACE : '}' ;
LBRACKET : '[' ;
RBRACKET : ']' ;
COMMA : ',' ;
DOT : '.' ;
SEMICOLON : ';' ;
COLON : ':' ;

/* 类型定义 */
INT : [0-9] ;  //定义int类型
BOOL : 'true' | 'false' ; //定义bool类型
STRING : '"' (~["\\])* '"' ; //定义string类型
FLOAT : [0-9]+ '.' [0-9]+ ; //定义float类型
NULL : 'null' ; //定义null类型
VOID : 'void' ; //定义void类型
BYTE : [0-255] ; //定义byte类型
INTTYPE: 'int'; //定义int关键字
FLOATTYPE: 'float'; //定义float关键字
STRINGTYPE: 'string'; //定义string关键字
BOOLTYPE: 'bool'; //定义bool关键字
BEYTYPE: 'byte'; //定义byte关键字



/* 关键字定义 */
X86_64: 'x86_64'; //x86_64架构
X86_32: 'x86_32'; //x86_32架构
ARM64: 'arm64'; //arm64架构
ARM32: 'arm32'; //arm32架构
ARCHITECTURE: 'architecture'; //架构关键字
IMPORT: 'import'; //导入关键字

FUNC: 'func'; //函数关键字
CLASS: 'class'; //类关键字
MODULE: 'module'; //模块关键字
STRUCT: 'struct'; //结构体关键字
OPENLY: 'openly'; //公开关键字
VAL: 'val'; //只读变量关键字
VAR: 'var'; //可写变量关键字 

IF: 'if'; 
ELSE: 'else'; 
ELSEIF: 'else if';
SWITCH: 'switch';
CASE: 'case';
DEFAULT: 'default';
BREAK: 'break';
WHILE: 'while';
FOR: 'for';

RETURN: 'return';

