grammar Mandarin;





/*
--------------------------------------------------------------------------------------
--                                     运算符定义
-------------------------------------------------------------------------------------- 
  */
LPAREN: '(';
RPAREN: ')';
LBRACE: '{';
RBRACE: '}';
LBRACK: '[';
RBRACK: ']';
SEMI: ';';
COMMA: ',';
DOT: '.';
COLON: ':';
AT :  '@' ;
BANG : '~';
DOLLAR : '$';
QUOTE : '\'';
QUOTE2 : '"';
DIV1 : '\\';
DIV2 : '/';
ADD: '+';
SUB: '-';
MUL: '*';
DIV: '/';
MOD: '%';
AND: '&';
OR: '||';
NOT: '!';
EQ: '==';
NE: '!=';
GT: '>';
GE: '>=';
LT: '<';
LE: '<=';
ASSIGN: '=';
INC: '++';
DEC: '--';





/*
--------------------------------------------------------------------------------------
--                                    关键字定义
-------------------------------------------------------------------------------------- 
  */
MODULE: 'module';
CLASS: 'class';
INTERFACE: 'interface';
ENUM: 'enum';
STRUCT: 'struct';
FUNCTION: 'func';
VAR: 'var';
CONST: 'const';
LET: 'let';
PRIVATE: 'private';
PUBLIC: 'public';
PROTECTED: 'protected';
STATIC: 'static';
VOLATILE: 'volatile';
FINAL: 'final';
ABSTRACT: 'abstract';
NATIVE: 'native';
SYNCHRONIZED: 'synchronized';
TRANSIENT: 'transient';


/*  运行时 */
RUNTIME: 'tuntime';
JIT: 'jit';
ANNOTATE: 'annotate';
COMPILER: 'compiler';


/*  平台  */
PLATFROM: 'platform';
ANDROID: 'android';
IOS: 'ios';
WINDOWS: 'windows';
MACOS: 'macos';
LINUX: 'linux';

/*  架构  */
ARCHITECYURE: 'architecture';
ARM64: 'arm64';
X86_64: 'x86_64';
ARM32: 'arm32';
X86_32: 'x86_32';


/* 值 */
INT: 'int';
BOOL: 'bool';
STRING: 'string';
FLOAT: 'float';
BYTE: 'byte';
VOID: 'void';
FILE: 'file';
DOUBLE: 'double';
DATE: 'date';
TIME: 'time';
TIMESTAMP: 'timestamp';
DATETIME: 'datetime';
UUID: 'uuid';
MAP: 'map';
ANY: 'any';



PRINT: 'print';     /*  用于打印 */


/*   日志   */
LOGS: 'logs';      /*  用于打印日志 */
LOGS_LEVEL: 'level';    /*  日志等级 */
LOGS_DEBUG: 'debug';    /*  debug */
LOGS_INFO: 'info';      /*  info */
LOGS_WARN: 'warn';      /*  warn */
LOGS_ERROR: 'error';    /*  error */


/* 判断语句 */
IF: 'if';
ELSE: 'else';
ELIF: 'elif';
WHILE: 'while';
FOR: 'for';
BREAK: 'break';
CONTINUE: 'continue';
SWITCH: 'switch';
CASE: 'case';
DEFAULT: 'default';


/*   重要语句   */
RETURN: 'return';
IMPORT: 'import';
EXTENDS: 'extends';
NEW: 'new';
THIS: 'this';
SUPER: 'super';


/*
--------------------------------------------------------------------------------------
--                                    类型定义 
-------------------------------------------------------------------------------------- 
*/







/*
--------------------------------------------------------------------------------------
--                                     词法定义
-------------------------------------------------------------------------------------- 
  */

WS: [ \t\r\n]+ -> channel(HIDDEN); // 忽略空白字符
SL_COMMENT: '//' .*? '\n' -> channel(HIDDEN); // 单行注释
ML_COMMENT: '/*' .*? '*/' -> channel(HIDDEN); // 多行注释

