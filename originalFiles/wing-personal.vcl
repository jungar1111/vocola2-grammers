# Voice commands for wing-personal

include Unimacro.vch;
# Voice commands for notepad++
include keys.vch;
include devedit.vch;

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
	deaf = "def ():"{Left_3};
	function = "def ():"{Left_3};
	function <_anything> = "def $1():"{Left_3};
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
	
# end of the file