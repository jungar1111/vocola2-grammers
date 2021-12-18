# Voice commands for notepad++
include Unimacro.vch;
include keys.vch;
include devedit.vch;

#<n> := 0..100;

Var = var;
bar = var;

Line <start_end>     = Keys.SendInput($1);

#10 thousand 5 hundred and 31

go to line <n> thousand <n> hundred and <n> = Keys.SendInput({Ctrl+g}){$1}{$2}{$3}{Enter};
go to line <n> hundred and 1..9 = Keys.SendInput({Ctrl+g}){$1}0{$2}{Enter};
go to line <n> hundred <n> = Keys.SendInput({Ctrl+g}){$1}0{$2}{Enter};
go to line <n> hundred = Keys.SendInput({Ctrl+g}){$1}00{Enter};
go to line <n> = Keys.SendInput({Ctrl+g}){$1}{Enter};

Next Tab = {Ctrl+Tab};
Previous Tab = {Ctrl+Shift+Tab};
Move Tab Right = {Ctrl+Shift+Page Down};
Move Tab Left = {Ctrl+Shift+Page Up};

select paragraph = {LeftButton_2};

new notepad file tab = {Ctrl+n};
open folder = {Alt+f}{Down_2}{Right_1}{Enter};
open containing folder = {Alt+f}{Down_2}{Right_1}{Enter};

#jungar | root | zipcar.com | data.host | .14 | ussomlogp01 :
#.vch | .vcl:

.htm | .html | .php:
	test HTML = "in HTML";
	<tag> := 	(	HTML = html |
					body = body |
					head = head |
					a = a |
					ah = a |
					alpha = a |
					b = b |
					beta = b |
					i = i |
					you = u |
					span = span |
					div = div |
					UL = ul |
					OL = ol |
					'el eye' = li |
					li = li |
					H1 = h1 |
					H2 = h2 |
					H3 = h3 |
					H4 = h4 |
					H5 = h5 |
					H6 = h6 |
					Table = table |
					T R = tr |
					T H = th |
					T D = td |
					P = p |
					P R E = pre |
					Script = script |
					Strong = strong |
					Style = style |
					T body = tbody |
					T head = thead |
					Text area = textarea |
					B R = 'br /' |
					H R = hr |
					title = title |
					Sub = sub |
					Soup = sup |
					Link = 'link rel="stylesheet" type="text/css" href="../csswork/default.css"' | 
					select = select
				);
	<tag2> :=	(	H ref = href |
					Call span = colspan | 
					sell padding = cellpadding | 
					sell spacing = cellspacing | 
					border = border | 
					style = style | 
					type = type | 
					Size = size | 
					Name = name | 
					Action = action | 
					Value = value | 
					ID = id | 
					Class = class
				);
	tag <tag> = "<$1>";
	tag <tag> <tag2> = "<$1 $2=>";
	tag <tag> <tag2> <tag2> = "<$1 $2= $3=>";
	tag <tag> <tag2> <tag2> <tag2> = "<$1 $2= $3= $4=>";
	tag <tag> <tag2> <tag2> <tag2> <tag2> = "<$1 $2= $3= $4= $5=>";
	end tag <tag> = "</$1>";
	attribute <tag2> = " $1=";
	& LT = "&lt;";
	& GT = "&gt;";
	
.php:
	test PHP = "in php";
	<superglobal> := (	GET | POST | COOKIE | FILES | SERVER | ENV | REQUEST | SESSION );
	dollar underscore <superglobal> = "\$_$1";
	dollar <_anything> = "\$$1";
	dollar var <n> = "\$" Variable.Get($1);
	ampersand dollar <_anything> = "&\$$1";
	<mathsymbolmin> <mathsymbolmin> dollar <_anything> = "$1$2$$3;";
	Slash slash = "//";
	slash star = "/*";
	star slash = "*/";
	include =  include '("");'{Left_3};
	include Once =  includeonce '("");'{Left_3};
	File touch = touch '("");'{Left_3};
	un link = unlink '("");'{Left_3};
	on link = unlink '("");'{Left_3};
	on a link = unlink '("");'{Left_3};
	File exists = file_exists '("")'{Left_2};
	file open = '\$fp = fopen("", "r")'{Left_2}{Ctrl+Shift+Left};
	file close = 'fclose(\$fp);'{Left_2}{Shift+Left_3};
	file gets = 'fgets(\$fp, 1024);'{Left_8}{Shift+Left_3};
	file lock = 'flock(\$fp, LOCK_EX);'{Left_11}{Shift+Left_3};
	file read = 'fread(\$fp, 16);'{Left_6}{Shift+Left_3};
	file seek = 'fseek(\$fp, 64);'{Left_6}{Shift+Left_3};
	file puts = 'fputs(\$fp, "sometext");'{Left_14}{Shift+Left_3};
	file right = 'fwrite(\$fp, "sometext");'{Left_14}{Shift+Left_3};
	file get C = 'fgetc(\$fp)'{Left}{Shift+Left_3};
	file E O F = 'feof(\$fp)'{Left}{Shift+Left_3};
	file end of file = 'feof(\$fp)'{Left}{Shift+Left_3};
	die = ' die("Could not open file, sorry")'{Left_2}{Ctrl+Shift+Left_6};
	or die = ' or die("Could not open file, sorry")'{Left_2}{Ctrl+Shift+Left_6};
	Make their = 'mkdir("adirectory", 0755);'{Left_9}{Ctrl+Shift+Left};
	render = 'rmdir("adirectory");'{Left_3}{Ctrl+Shift+Left};
	our Ender = 'rmdir("adirectory");'{Left_3}{Ctrl+Shift+Left};
	open their = 'opendir("adirectory");'{Left_3}{Ctrl+Shift+Left};
	RM their = 'opendir("adirectory");'{Left_3}{Ctrl+Shift+Left};
	is file = is_file '("")'{Left_2};
	is der = is_dir '("")'{Left_2};
	is readable = is_readable '("")'{Left_2};
	is writable = is_writable '("")'{Left_2};`
	is executable = is_executable '("")'{Left_2};
	File size = filesize '("")'{Left_2};
	<filetimes> := (access = a |
					accessed = a |
					modified = m | 
					Changed = c | 
					Created = c |
					Creation = c 
					);
	File <filetimes> time = 'file$1time("")' {Left_2};
	echo = echo ' "";'{Left_2};
	S print F = 'sprintf("", );'{Left_5};
	S printf = 'sprintf("", );'{Left_5};
	print F = 'printf("", );'{Left_5};
	get type = "gettype();"{Left_2};
	set type = "settype(\$var, 'new type')"{Left_16};
	less than question mark php = "<?php"{enter};
	begin PHP = "<?php"{enter};
	question mark greater than = "?>"{enter};
	end PHP = "?>"{enter};
	concatenate = ".";
	define constant = 'define("CONSTANT_NAME", "value");'{Left_25};
	constant File = '__FILE__';
	Constant Line = '__LINE__';
	Constant P H P Version = 'PHP_VERSION';
	if = 'if () {{Enter}{Tab}{Enter}}'{Up_2}{End}{Left_3};
	else = ' else {{Enter}{Tab}{Enter}}'{Up_1}{End};
	else if = ' else if () {{Enter}{Tab}{Enter}} '{Up_2}{End}{Left_3};
	switch = 'switch () {{Enter}{Tab}{Enter}}'{Up_2}{End}{Left_3};
	case = "case :{Enter}{Tab}{Enter}break;"{Up_2}{End}{Left_1};
	default = "default :{Enter}{Tab}";
	while = 'while () {{Enter}{Tab}{Enter}}'{Up_2}{End}{Left_3};
	do while = 'do {{Enter}{Tab}{Enter}} while ();'{Left_2};
	For statement = 'for (; ; ) {{Enter}{Tab}{Enter}}'{Up_2}{End}{Left_7};
	for each = 'foreach (\$array as \$a) {{Enter}{Enter}}'{Up_2}{End}{Left_14}{Ctrl+Shift+Right};
	while list = 'while (list(\$k, \$v) = each(\$a)) {{Enter}echo "\$k ... \$v <br />"{Enter}}'{Up_2}{End}{Left_20}{Ctrl+Shift+Right};
	count = 'count()';
	size of = 'sizeof()';
	each = 'each()';
	list = 'list()';
	reset array = 'reset(\$array);'{Left_7};
#tohere
	array push = 'array_push(\$array, "element1", "element2");'{Left_31};
	array pop = 'array_pop(\$array);'{Left_7};
	array unshift = 'array_unshift(\$array, "element1", "element2");'{Left_31};
	array shift = 'array_shift(\$array);'{Left_7};
	array merge = 'array_merge(\$array, \$array2);'{Left_16};
	array keys = 'array_keys(\$array);'{Left_7};
	array values = 'array_values(\$array);'{Left_7};
	Continue = continue;
	function = 'function functionname() {{Enter}{Tab}{Enter}}'{Up_2}{End}{Left_4}{Ctrl+Shift+Left};
	function <_anything> = 'function $1() {{Enter}{Tab}{Enter}}'{Up_2}{End}{Left_3};
	class = 'class daClass {{Enter}{Tab}{Enter}}'{Up_2}{Home}{Right_6}{Ctrl+Shift+Right};
	class <_anything> = 'class $1 {{Enter}{Tab}{Enter}}'{Up_2}{Home}{Right_6}{Ctrl+Shift+Right};
	return = 'return \$val;';
	global = 'global \$val;';
	global <_anything> = 'global \$$1;';
	static = 'static \$val;';
	static <_anything> = 'static \$$1;';
	array = "array();"{Left_2};
	Already = "array();"{Left_2};
	associative array = 'array({Enter}{Tab}{Tab}{Tab}"name" =>{Tab}"value"{Enter});'{Up_1}{Home}{Right_1};
	pointer = '->';
	equals pointer = '=>';
	padded pointer = ' -> ';
	padded equals pointer = ' => ';
	string length = 'strlen()'{Left_1};
	string sub string = 'strstr()'{Left_1};
	string string = 'strstr()'{Left_1};
	string position = 'strpos()'{Left_1};
	sub string = 'substr(,,)'{Left_3};
	string tokenize = 'strtok(\$string,\$delims)'{Left_15}{Ctrl+Shift+Right};
	trim = "trim()" {Left_1};
	l trim = "ltrim()" {Left_1};
	r trim = "rtrim()" {Left_1};
	strip tags = "strip_tags()" {Left_1};
	sub string replace = 'substr_replace(,,,)'{Left_4};
	string replace = 'str_replace(,,)'{Left_3};
	string to upper = 'stringtoupper(\$string)'{Left_7}{Ctrl+Shift+Right};
	string to lower = 'stringtolower(\$string)'{Left_7}{Ctrl+Shift+Right};
	u c words = 'ucwords(\$string)'{Left_7}{Ctrl+Shift+Right};
	u c first = 'ucfirst(\$string)'{Left_7}{Ctrl+Shift+Right};
	n l 2 b r = 'nl2br(\$string)'{Left_7}{Ctrl+Shift+Right};
	word wrap = 'wordwrap(\$string, \$num, "<br />\n")'{Left_25}{Ctrl+Shift+Right};
	explode = 'explode("-", \$string)'{Left_12}{Shift+Right};
	Time = 'time()';
	get Date = 'getdate()';
	Date = 'date("m/d/y g:i:s a", \$time)' {Left_5}{Ctrl+Shift+Right};
	make time = 'mktime(hh,mm,ss,Mo,dd,yyyy)' {Left_18}{Ctrl+Shift+Left};
	check date = 'checkdate(Mo,dd,yyyy)' {Left_9}{Ctrl+Shift+Left};

.js:
	function = 'function functionname() {{Enter}{Tab}{Enter}}'{Up_2}{End}{Left_4}{Ctrl+Shift+Left};
	function <_anything> = 'function $1() {{Enter}{Tab}{Enter}}'{Up_2}{End}{Left_3};

	dollar dot get = "\$.get('subfile.php',{'getfieldname'{Tab}: \$('.#field')[0].value,{Enter}{Tab}{Tab}{Tab}{Tab}{Tab}function(data) {{Enter}\$('#IDtoput').html(data);{Enter}{Tab}{Tab}{Tab}{Tab}{Tab}}{Enter}{Tab}{Tab}}{Enter}{Tab});";
	
#python
.py:
  	Is python loaded = 'Yes'; 
	<modifiers_py> := (	title |
						pop |
						append |
						remove |
						sort |
						read |
						read lines = readlines |
						our strip = rstrip |
						el strip = lstrip |
						strip |
						right = write |
						lower |
						count
					);
	. <modifiers_py> = ".$1()"{Left};
	<truefalse> := ( true | false );
	reverse equals <truefalse> = "reverse=$1";
	land of <_anything> = "len($1)";
	of <n> = "[$1]";
	<ClassOrFunction> := function | class;
	<ClassOrFunction> var = {End}{Left_2};
	<ClassOrFunction> next var = {End}{Ctrl+Left}{Ctrl+Right}", ";
	deaf = "def ():"{Left_2};
	function = "def ():"{Left_2};
	function <_anything> = "def $1():"{Left_2};
	function init = "def __init__(self):"{Left_2};
	super init = "super().__init__()"{Left};
	class = "class ():"{Left_3};
	class <_anything>= "class $1():"{Left_3};
	dell = "del ";
	if = "if  :"{Left_1};
	if in = "if  in:"{Left_4};
	if command = "if :"{Left_1};
	el if = "elif :"{Left_1};
	else = "else:";
	try = "try:"{Enter}{Tab};
	except = "except :"{Left_1};
	triple quote = '"""';
	params = "params";
	print <_anything> = 'print("$1")'{Left_2};
	print no quote <_anything> = 'print($1)'{Left};
	tupel new value = {End}{Left}", ";
	couple new value = {End}{Left}", ";
	new tupel value = {End}{Left}", ";
	new couple value = {End}{Left}", ";
	tupel <_anything> = "$1 = ()"{Left};
	couple <_anything> = "$1 = ()"{Left};
	dictionaries key = {Home}{Right};
	dictionaries value = {End}{Left_2};
	dictionaries value to list = {End}{Left}{Shift+Left}{Shift+Left}{Del}"['']"{Left_2};
	dictionaries value to dictionary = {End}{Left}{Shift+Left}{Shift+Left}{Del}"{"{Enter}{Tab}"'' : '',"{Enter}"}"{Up_1}{End}{Left_7};
	knew key value = {End}{Enter}"'' : '',"{End}{Left_7};
	knew key value move left = {End}{Enter}{Shift+Left}"'' : '',"{End}{Left_7};
	new dictionary list value = {End}{Left_2}", ''"{Left};
	new list value = {End}{Left_1}", ''"{Left};
	dictionaries <_anything> = "$1 = {"{Enter}{Tab}"'' : '',"{Enter}"}"{Up_1}{End}{Left_7};
	list <_anything> = "$1 = ['']"{Left_2};
	input = 'input("")'{Left_2};
	input <_anything> = 'input("$1")'{Left_2};
	input <_anything> <_anything> = 'input("$1 $2")'{Left_2};
	input <_anything> <_anything> <_anything> = 'input("$1 $2 $3")'{Left_2};
	input <_anything> <_anything> <_anything> <_anything> = 'input("$1 $2 $3 $4")'{Left_2};
	int of <_anything> = "int($1)";
	raw input of <_anything> = "raw_input($1)";
	while loop = "while :"{Left};
	while <_anything> in <_anything> = "while '$1' in $2:";
	break = break;
	with open as = "with open('') as file_object:"{Left_18};
	with open has = "with open('') as file_object:"{Left_18};
	for in = "for  in :"{Left_5};
	for and = "for  in :"{Left_5};
	four in = "for  in :"{Left_5};

	
.vch | .vcl:
	test VCL = "vcl here";
    test BCL = "vcl here";
	Dollar <n> = "\$$1";
	Dollar if = '"{Backspace}\$if"{Backspace}'{Enter}{Enter}'"{Backspace}\$end"{Backspace}'{Up_2}{End}{Space};
	insert <_anything> = '{$1}';
    control = Ctrl;
    Shift = Shift;
    Alt = Alt;