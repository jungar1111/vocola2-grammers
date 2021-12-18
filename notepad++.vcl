# Voice commands for notepad++
## Voice commands for notepad++
include keys.vch;
##include devedit.vch;
###
<n> := 0..99; 
identify command file = next Vocola.Print("in notepad++.vcl");
Var = var;
bar = var;
##
#Line <start_end>     = Keys.SendInput($1);
##previous file
###10 thousand 5 hundred and 31

go to line <n> thousand <n> hundred and <n> = Keys.SendInput({Ctrl+g}){$1}{$2}{$3}{Enter};
go to line <n> hundred and 1..9 = Keys.SendInput({Ctrl+g}){$1}0{$2}{Enter};
go to line <n> hundred <n> = Keys.SendInput({Ctrl+g}){$1}0{$2}{Enter};
go to line <n> hundred = Keys.SendInput({Ctrl+g}){$1}00{Enter};
go to line <n> = Keys.SendInput({Ctrl+g}){$1}{Enter};
# previous file
##[Press]             <mod> <key> <nn> = Keys.SendInput({$1+$2_$3});
##[Press]             <mod> <key> <nn> = Keys.SendInput({$1+$2_$3});
##[Press]             <mod> <key> <nn> = Keys.SendInput({$1+$2_$3});

Next File = {Ctrl+PgDn};
next file = {Ctrl+PgDn};
next tab = HeardWord(Load all commands) Wait(1000) {Ctrl+PgDn};
#if 'next|previous tab' fail...manually say load all commands followed by 'next|previous tab'
previous tab = {Ctrl+PgUp};
previous file = {Ctrl+PgUp};
Previous File = {Ctrl+PgUp};

Move Tab Right = Keys.SendInput({Ctrl+Shift+PgDn});
Move Tab Left = Keys.SendInput({Ctrl+Shift+PgUp});
#press plus page upCtrl pressCtrl plus page up

#select paragraph = {LeftButton_2};
#
#
#new notepad file = {Ctrl+n};
#new file = {Ctrl+n};
duplicate line = {Ctrl+d};
#duplicate line = {Ctrl+d};
open folder = {Alt+f}{Down_2}{Right_1}{Enter};
open containing folder = {Alt+f}{Down_2}{Right_1}{Enter};
open containing folder = {Alt+f}{Down_2}{Right_1}{Enter};
switch to other window = {F8};
Close file = Keys.SendInput({Ctrl+w});
close file = Keys.SendInput ({Ctrl+w});
save file as = {Ctrl+Alt+S};
#
## root | dns.hostname.com :
##.vch | .vcl: 	
#
.vch | .vcl: previous tab 
	test VCL = "vcl here";
    test BCL = "vcl here";
	Dollar <n> = "\$$1";
	Dollar if = '"{Backspace}\$if"{Backspace}'{Enter}{Enter}'"{Backspace}\$end"{Backspace}'{Up_2}{End}{Space};
	control = Ctrl;
    Shift = Shift;
    Alt = Alt;
	insert <_anything> = '{$1}';
	{hello}

#
.htm | .html | .php:
	test HTML = Vocola.Print("in HTML");
	test PHP = Vocola.Print("in PHP");
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
					LI = li |
					LI = li |
					Ente Galli = li |
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
	<superglobal> := (	GET | POST | COOKIE | FILES | SERVER | ENV | REQUEST | SESSION );
	dollar underscore <superglobal> = "\$_$1";
	dollar <_anything> = "\$$1";
