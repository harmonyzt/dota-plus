[default]
style=fore:clBlack,back:clWhite,size:8,font:Courier,notbold,notitalics,notunderlined,visible,noteolfilled,changeable,nothotspot
WordWrap=0
WordChars=_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
ClearUndoAfterSave=False
EOLMode=0
LineNumbers=False
Gutter=True
CaretPeriod=1024
CaretWidth=1
CaretLineVisible=True
CaretFore=clNone
CaretBack=#E6E6FF
CaretAlpha=0
SelectForeColor=clHighlightText
SelectBackColor=clHighlight
SelectAlpha=256
MarkerForeColor=clWhite
MarkerBackColor=clBtnShadow
FoldMarginHighlightColor=clWhite
FoldMarginColor=clBtnFace
WhitespaceForeColor=clDefault
WhitespaceBackColor=clDefault
ActiveHotspotForeColor=clBlue
ActiveHotspotBackColor=#A8A8FF
ActiveHotspotUnderlined=True
ActiveHotspotSingleLine=False
FoldMarkerType=0
MarkerBookmark=markertype:sciMFullRect,Alpha:256,fore:clWhite,back:clGray
EdgeColumn=100
EdgeMode=1
EdgeColor=clSilver
CodeFolding=True
BraceHighlight=True

[extension]


[null]
lexer=null

style.33=name:LineNumbers,font:Arial
style.34=name:Ok Braces,fore:clYellow,bold
style.35=name:Bad Braces,fore:clRed,bold
style.36=name:Control Chars,back:clSilver
style.37=name:Indent Guide,fore:clGray

CommentBoxStart=/*
CommentBoxEnd=*/
CommentBoxMiddle=*
CommentBlock=//
CommentStreamStart=/*
CommentStreamEnd=*/
AssignmentOperator==
EndOfStatementOperator=;
[XML]
lexer=xml
NumStyleBits=7
keywords.0=name:Keywords::

keywords.5=name:SGML Keywords::ELEMENT DOCTYPE ATTLIST ENTITY NOTATION

style.33=name:LineNumbers
style.34=name:Ok Braces,fore:clYellow,bold
style.35=name:Bad Braces,fore:clRed,bold
style.36=name:Control Chars,back:clSilver
style.37=name:Indent Guide,fore:clGray
style.0=name:Default
style.1=name:Tags,fore:#00D0D0
style.2=name:Unknown Tags,fore:#00D0D0
style.3=name:Attributes,fore:#A0A0C0
style.4=name:Unknown Attributes,fore:#A0A0C0
style.5=name:Numbers,fore:#E00000
style.6=name:Double quoted strings,fore:clLime
style.7=name:Single quoted strings,fore:clLime
style.8=name:Other inside tag,fore:#A000A0
style.9=name:Comment,fore:#909090
style.10=name:Entities,bold
style.11=name:XML short tag end,fore:#A000A0
style.12=name:XML identifier start,fore:#A000A0,bold
style.13=name:XML identifier end,fore:#A000A0,bold
style.17=name:CDATA,fore:clMaroon,back:#FFF0F0,eolfilled
style.18=name:XML Question,fore:#A00000
style.19=name:Unquoted values,fore:clFuchsia
style.21=name:SGML tags <! ... >,fore:#00D0D0
style.22=name:SGML command,fore:#00A0A0,bold
style.23=name:SGML 1st param,fore:#0FFFF0
style.24=name:SGML double string,fore:clLime
style.25=name:SGML single string,fore:clLime
style.26=name:SGML error,fore:clRed
style.27=name:SGML special,fore:#3366FF
style.28=name:SGML entity,bold
style.29=name:SGML comment,fore:#909090
style.31=name:SGML block,fore:#000066,back:#CCCCE0

CommentBoxStart=<!--
CommentBoxEnd=-->
CommentBoxMiddle=
CommentBlock=//
CommentStreamStart=<!--
CommentStreamEnd=-->
AssignmentOperator==
EndOfStatementOperator=;
[HTML]
lexer=hypertext
NumStyleBits=7
keywords.0=name:HyperText::a abbr acronym address applet area b base basefont bdo big blockquote body br button caption center\
cite code col colgroup dd del dfn dir div dl dt em fieldset font form frame frameset\
h1 h2 h3 h4 h5 h6 head hr html i iframe img input ins isindex kbd label\
legend li link map menu meta noframes noscript object ol optgroup option p param pre q s\
samp script select small span strike strong style sub sup table tbody td textarea tfoot th thead\
title tr tt u ul var xml xmlns abbr accept-charset accept accesskey action align alink alt archive\
axis background bgcolor border cellpadding cellspacing char charoff charset checked cite class classid clear codebase codetype color\
cols colspan compact content coords data datafld dataformatas datapagesize datasrc datetime declare defer dir disabled enctype event\
face for frame frameborder headers height href hreflang hspace http-equiv id ismap label lang language leftmargin link\
longdesc marginwidth marginheight maxlength media method multiple name nohref noresize noshade nowrap object onblur onchange onclick ondblclick\
onfocus onkeydown onkeypress onkeyup onload onmousedown onmousemove onmouseover onmouseout onmouseup onreset onselect onsubmit onunload profile prompt readonly\
rel rev rows rowspan rules scheme scope selected shape size span src standby start style summary tabindex\
target text title topmargin type usemap valign value valuetype version vlink vspace width text password checkbox radio\
submit reset file hidden image framespacing scrolling allowtransparency bordercolor

keywords.1=name:JavaScript::abstract boolean break byte case catch char class const continue debugger default delete do double else enum\
export extends final finally float for function goto if implements import in instanceof int interface long native\
new package private protected public return short static super switch synchronized this throw throws transient try typeof\
var void volatile while with

keywords.2=name:VBScript::and begin case call class continue do each else elseif end erase error event exit false for\
function get gosub goto if implement in load loop lset me mid new next not nothing on\
or property raiseevent rem resume return rset select set stop sub then to true unload until wend\
while with withevents attribute alias as boolean byref byte byval const compare currency date declare dim double\
enum explicit friend global integer let lib long module object option optional preserve private public redim single\
static string type variant

keywords.3=name:Python::and assert break class continue def del elif else except exec finally for from global if import\
in is lambda None not or pass print raise return try while yield

keywords.4=name:PHP::and argv as argc break case cfunction class continue declare default do die echo else elseif empty\
enddeclare endfor endforeach endif endswitch endwhile e_all e_parse e_error e_warning eval exit extends false for foreach function\
global http_cookie_vars http_get_vars http_post_vars http_post_files http_env_vars http_server_vars if include include_once list new not null old_function or parent\
php_os php_self php_version print require require_once return static switch stdclass this true var xor virtual while __file__\
__line__ __sleep __wakeup

keywords.5=name:DTD Keywords::ELEMENT DOCTYPE ATTLIST ENTITY NOTATION

style.33=name:LineNumbers
style.34=name:Ok Braces,fore:clBlue,bold
style.35=name:Bad Braces,fore:clRed,bold
style.36=name:Control Chars,back:clSilver
style.37=name:Indent Guide,fore:clGray
style.0=name:Text
style.1=name:Tags,bold
style.2=name:Unknown Tags,fore:clOlive
style.3=name:Attributes,fore:#A0A0C0
style.4=name:Unknown Attributes,fore:clRed
style.5=name:Numbers,fore:clBlue
style.6=name:Double quoted strings,fore:#AA9900
style.7=name:Single quoted strings,fore:clLime
style.8=name:Other inside tag
style.9=name:Comment,fore:#FF8000
style.10=name:Entities,fore:#A0A0A0,font:Times New Roman,bold
style.11=name:XML short tag end,fore:#00C0C0
style.12=name:XML identifier start,fore:#A000A0
style.13=name:XML identifier end,fore:#A000A0
style.14=name:SCRIPT,fore:#000A0A
style.15=name:ASP <% ... %>,fore:clYellow
style.16=name:ASP <% ... %>,fore:clYellow
style.17=name:CDATA,fore:#FFDF00
style.18=name:PHP,fore:#FF8951
style.19=name:Unquoted values,fore:clFuchsia
style.20=name:XC Comment
style.21=name:SGML tags <! ... >,fore:#00D0D0
style.22=name:SGML command,fore:#00A0A0,bold
style.23=name:SGML 1st param,fore:#0FFFF0
style.24=name:SGML double string,fore:clLime
style.25=name:SGML single string,fore:clLime
style.26=name:SGML error,fore:clRed
style.27=name:SGML special,fore:#3366FF
style.28=name:SGML entity
style.29=name:SGML comment,fore:#909090
style.31=name:SGML block,fore:clBlue
style.40=name:JS Start,fore:#7F7F00
style.41=name:JS Default,bold,eolfilled
style.42=name:JS Comment,fore:#909090,eolfilled
style.43=name:JS Line Comment,fore:#909090
style.44=name:JS Doc Comment,fore:#909090,bold,eolfilled
style.45=name:JS Number,fore:#E00000
style.46=name:JS Word,fore:#00CCCC
style.47=name:JS Keyword,fore:clOlive,bold
style.48=name:JS Double quoted string,fore:clLime
style.49=name:JS Single quoted string,fore:clLime
style.50=name:JS Symbols
style.51=name:JS EOL,fore:clWhite,back:#202020,eolfilled
style.52=name:JS Regex,fore:#C032FF
style.55=name:ASP JS Start,fore:#7F7F00
style.56=name:ASP JS Default,bold,eolfilled
style.57=name:ASP JS Comment,fore:#909090,eolfilled
style.58=name:ASP JS Line Comment,fore:#909090
style.59=name:ASP JS Doc Comment,fore:#909090,bold,eolfilled
style.60=name:ASP JS Number,fore:#E00000
style.61=name:ASP JS Word,fore:#E0E0E0
style.62=name:ASP JS Keyword,fore:clOlive,bold
style.63=name:ASP JS Double quoted string,fore:clLime
style.64=name:ASP JS Single quoted string,fore:clLime
style.65=name:ASP JS Symbols
style.66=name:ASP JS EOL,fore:clWhite,back:#202020,eolfilled
style.67=name:ASP JS Regex,fore:#C032FF
style.71=name:VBS Default,eolfilled
style.72=name:VBS Comment,fore:#909090,eolfilled
style.73=name:VBS Number,fore:#E00000,eolfilled
style.74=name:VBS KeyWord,fore:clOlive,bold,eolfilled
style.75=name:VBS String,fore:clLime,eolfilled
style.76=name:VBS Identifier,fore:clSilver,eolfilled
style.77=name:VBS Unterminated string,fore:clWhite,back:#202020,eolfilled
style.81=name:ASP Default,eolfilled
style.82=name:ASP Comment,fore:#909090,eolfilled
style.83=name:ASP Number,fore:#E00000,eolfilled
style.84=name:ASP KeyWord,fore:clOlive,bold,eolfilled
style.85=name:ASP String,fore:clLime,eolfilled
style.86=name:ASP Identifier,fore:clSilver,eolfilled
style.87=name:ASP Unterminated string,fore:clWhite,back:#202020,eolfilled
style.90=name:Python Start,fore:clGray
style.91=name:Python Default,fore:clGray,eolfilled
style.92=name:Python Comment,fore:#909090,eolfilled
style.93=name:Python Number,fore:#E00000,eolfilled
style.94=name:Python String,fore:clLime,eolfilled
style.95=name:Python Single quoted string,fore:clLime,font:Courier New,eolfilled
style.96=name:Python Keyword,fore:clOlive,bold,eolfilled
style.97=name:Python Triple quotes,fore:#7F0000,back:#EFFFEF,eolfilled
style.98=name:Python Triple double quotes,fore:#7F0000,back:#EFFFEF,eolfilled
style.99=name:Python Class name definition,fore:clBlue,back:#EFFFEF,bold,eolfilled
style.100=name:Python function or method name definition,fore:#007F7F,back:#EFFFEF,bold,eolfilled
style.101=name:Python function or method name definition,back:#EFFFEF,bold,eolfilled
style.102=name:Python Identifiers,back:#EFFFEF,eolfilled
style.104=name:PHP Complex Variable,fore:#00A0A0,italics
style.105=name:ASP Python Start,fore:clGray
style.106=name:ASP Python Default,fore:clGray,eolfilled
style.107=name:ASP Python Comment,fore:#909090,eolfilled
style.108=name:ASP Python Number,fore:#E00000,eolfilled
style.109=name:ASP Python String,fore:clLime,font:Courier New,eolfilled
style.110=name:ASP Python Single quoted string,fore:clLime,eolfilled
style.111=name:ASP Python Keyword,fore:clOlive,bold,eolfilled
style.112=name:ASP Python Triple quotes,fore:#7F0000,back:#CFEFCF,eolfilled
style.113=name:ASP Python Triple double quotes,fore:#7F0000,back:#CFEFCF,eolfilled
style.114=name:ASP Python Class name definition,fore:clBlue,back:#CFEFCF,bold,eolfilled
style.115=name:ASP Python function or method name definition,fore:#007F7F,back:#EFFFEF,bold,eolfilled
style.116=name:ASP Python function or method name definition,back:#CFEFCF,bold,eolfilled
style.117=name:ASP Python Identifiers,fore:clSilver,back:#CFEFCF,eolfilled
style.118=name:PHP Default,eolfilled
style.119=name:PHP Double quoted string,fore:clLime
style.120=name:PHP Single quoted string,fore:clLime
style.121=name:PHP Keyword,fore:clOlive,bold
style.122=name:PHP Number,fore:#E00000
style.123=name:PHP Variable,fore:#00A0A0,italics
style.124=name:PHP Comment,fore:#909090
style.125=name:PHP One line Comment,fore:#909090
style.126=name:PHP Variable in double quoted string,fore:#00A0A0,italics
style.127=name:PHP operator,fore:clSilver

CommentBoxStart=<!--
CommentBoxEnd=-->
CommentBoxMiddle=
CommentBlock=//
CommentStreamStart=<!--
CommentStreamEnd=-->
AssignmentOperator==
EndOfStatementOperator=;
[C++]
lexer=cpp
keywords.0=name:Primary keywords and identifiers::__asm _asm asm auto __automated bool break case catch __cdecl _cdecl cdecl char class __classid __closure const\
const_cast continue __declspec default delete __dispid do double dynamic_cast else enum __except explicit __export export extern false\
__fastcall _fastcall __finally float for friend goto if __import _import __inline inline int __int16 __int32 __int64 __int8\
long __msfastcall __msreturn mutable namespace new __pascal _pascal pascal private __property protected public __published register reinterpret_cast return\
__rtti short signed sizeof static_cast static __stdcall _stdcall struct switch template this __thread throw true __try try\
typedef typeid typename union unsigned using virtual void volatile wchar_t while dllexport dllimport naked noreturn nothrow novtable\
property selectany thread uuid

keywords.1=name:Secondary keywords and identifiers::TStream TFileStream TMemoryStream TBlobStream TOleStream TStrings TStringList AnsiString String WideString cout cin cerr endl fstream ostream istream\
wstring string deque list vector set multiset bitset map multimap stack queue priority_queue

keywords.2=name:Doc Comments::a addindex addtogroup anchor arg attention author b brief bug c class code date def defgroup deprecated\
dontinclude e em endcode endhtmlonly endif endlatexonly endlink endverbatim enum example exception f$ f[ f] file fn\
hideinitializer htmlinclude htmlonly if image include ingroup internal invariant interface latexonly li line link mainpage name namespace\
nosubgrouping note overload p page par param post pre ref relates remarks return retval sa section see\
showinitializer since skip skipline struct subsection test throw todo typedef union until var verbatim verbinclude version warning\
weakgroup $ @ < > \ & # { }

keywords.3=name:Unused::

keywords.4=name:Global classes and typedefs::LOL

style.33=name:LineNumbers
style.34=name:Ok Braces,fore:#0000BB
style.35=name:Bad Braces,fore:clRed
style.36=name:Control Chars,fore:clGray
style.37=name:Indent Guide,fore:clGray
style.0=name:White space,fore:#0000BB,font:Courier New
style.1=name:Comment,fore:#FF8040
style.2=name:Line Comment,fore:#FF8040
style.3=name:Doc Comment,fore:#FF8040
style.4=name:Number,fore:clNavy
style.5=name:Keyword,fore:#007700
style.6=name:Double quoted string,fore:clRed
style.7=name:Single quoted string,fore:clRed
style.8=name:Symbols/UUID,fore:clRed
style.9=name:Preprocessor,fore:#FF8000
style.10=name:Operators,fore:#007700
style.11=name:Identifier,fore:clNavy
style.12=name:EOL if string is not closed,fore:clRed,eolfilled
style.13=name:Verbatim strings for C#,fore:clLime
style.14=name:Regular expressions,fore:clHotLight
style.15=name:Doc Comment Line,fore:#FF8040
style.16=name:User-defined keywords,fore:clRed
style.17=name:Comment keyword,fore:#FF8000
style.18=name:Comment keyword error,fore:clRed
style.19=name:Global classes and typedefs,fore:clGreen

CommentBoxStart=/*
CommentBoxEnd=*/
CommentBoxMiddle=*
CommentBlock=//
CommentStreamStart=/*
CommentStreamEnd=*/
AssignmentOperator==
EndOfStatementOperator=;
[SQL]
lexer=mssql
keywords.0=name:Statements::

keywords.1=name:Data Types::

keywords.2=name:System tables::

keywords.3=name:Global variables::

keywords.4=name:Functions::

keywords.5=name:System Stored Procedures::

keywords.6=name:Operators::

style.33=name:LineNumbers,font:Arial
style.34=name:Ok Braces,fore:clYellow,bold
style.35=name:Bad Braces,fore:clRed,bold
style.36=name:Control Chars,back:clSilver
style.37=name:Indent Guide,fore:clGray
style.0=name:Default,fore:clSilver
style.1=name:Comment,fore:#909090
style.2=name:Line Comment,fore:#909090
style.3=name:Number,fore:#E00000
style.4=name:String,fore:clLime
style.5=name:Operator,fore:clSilver
style.6=name:Identifier,fore:clSilver
style.7=name:Variable
style.8=name:Column Name
style.9=name:Statement
style.10=name:Data Type
style.11=name:System Table
style.12=name:Global Variable
style.13=name:Function
style.14=name:Stored Procedure
style.15=name:Default Pref Datatype
style.16=name:Column Name 2

CommentBoxStart=/*
CommentBoxEnd=*/
CommentBoxMiddle=*
CommentBlock=#
CommentStreamStart=/*
CommentStreamEnd=*/
AssignmentOperator==
EndOfStatementOperator=;
[Pawn]
lexer=cpp
keywords.0=name:Primary keywords and identifiers::assert char #assert const break de ned #de ne enum case sizeof #else forward continue tagof #emit\
native default #endif new do #endinput operator else #endscript public exit #error static for # le stock\
goto #if if #include return #line sleep #pragma state #section switch #tryinclude while #undef Float

keywords.1=name:Secondary keywords and identifiers:: new const levels[] = plugin_init plugin_precache func_player_dead client_putinserver new_round checklvl render_info plugin_natives native_get_user_skillpoints native_give_user_xp native_get_user_xp native_set_user_xp native_get_user_level native_is_first_blood native_is_on_kstreak\
DOTA_MAIN_MENU func_MAIN_MENU StartSearch func_StartSearch StartCasual StartComp MenuSettings AdminSettings func_AdminSettings ChangeToCasual ChangeToComp

keywords.2=name:Doc Comments::a addindex addtogroup anchor arg attention author b brief bug c class code date def defgroup deprecated\
dontinclude e em endcode endhtmlonly endif endlatexonly endlink endverbatim enum example exception f$ f[ f] file fn\
hideinitializer htmlinclude htmlonly if image include ingroup internal invariant interface latexonly li line link mainpage name namespace\
nosubgrouping note overload p page par param post pre ref relates remarks return retval sa section see\
showinitializer since skip skipline struct subsection test throw todo typedef union until var verbatim verbinclude version warning\
weakgroup $ @ < > \ & # { }

keywords.3=name:Unused::

style.33=name:LineNumbers
style.34=name:Ok Braces,fore:#0000BB
style.35=name:Bad Braces,fore:clRed
style.36=name:Control Chars,fore:clGray
style.37=name:Indent Guide,fore:clGray
style.0=name:White space,fore:#0000BB,font:Arial
style.1=name:Comment,fore:#5555FF
style.2=name:Line Comment,fore:#5555FF
style.3=name:Doc Comment,fore:#AA2AFF
style.4=name:Number,fore:clNavy
style.5=name:Keyword,fore:#FF55AA
style.6=name:Double quoted string,fore:clRed
style.7=name:Single quoted string,fore:clRed
style.8=name:Symbols/UUID,fore:clRed
style.9=name:Preprocessor,fore:#FF8000
style.10=name:Operators,fore:#FF7FD4
style.11=name:Identifier,fore:clNavy
style.12=name:EOL if string is not closed,fore:clRed,eolfilled
style.13=name:Verbatim strings for C#,fore:clLime
style.14=name:Regular expressions,fore:clHotLight
style.15=name:Doc Comment Line,fore:#2A55FF
style.16=name:User-defined keywords,fore:clRed

CommentBoxStart=/*
CommentBoxEnd=*/
CommentBoxMiddle=*
CommentBlock=//
CommentStreamStart=/*
CommentStreamEnd=*/
AssignmentOperator==
EndOfStatementOperator=;
[other]
BookMarkBackColor=clGray
BookMarkForeColor=clWhite
BookMarkPixmapFile=
Unicode=False
