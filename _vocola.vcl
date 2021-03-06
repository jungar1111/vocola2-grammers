include keys.vch;
#
#include personal.vch;
#include utilities.vch;
#include connectto.vch

#
### Global voice commands

test box = MsgBoxConfirm("Testing",65,"Test Window");
test voice = TTSPlayString("Welcome to the jungle");

#min things DOS, *nix, etc
save file = {Ctrl+s};
safe file = {Ctrl+s};
new file = {Ctrl+n};
open file = {Alt+f} o;
close file = {Ctrl+w};
select all = {Ctrl+a};
undo that = {Ctrl+z};
copy that = {Ctrl+c};
paste that = {Ctrl+v};
cut that = {Ctrl+x};
print that = {Ctrl+p};
insert text <_anything> = $1;
find <_anything> = {Ctrl+f} $1 {Enter};
Vocola line = Vocola.Print("----------------");

# Text Editing
<direction>  := { Left | Right | Up | Down };
<up_down>    := { Back=Up | Forward=Down | Up | Down };
<left_right> := { Left | Right };
<start_end>  := { Beginning={Home} | Start={Home} | End={End} };
<to_start_end>  := { Beginning=Home | Start=Home | End=End };

# Characters + 
crazy 1 up = Keys.SendInput({up_1});
crazy 1 down = Keys.SendInput({down_1});
crazy 1 right = Keys.SendInput({right_1});
crazy 1 left = Keys.SendInput({left_1});
##1 of = Keys.SendInput({up_1});
##one <direction>       = Keys.SendInput({$1_1});
##<n> <direction>       = Keys.SendInput({$2_$1});
#go <n> [lines] <direction>       = Keys.SendInput({$2_$1});

##Kill <n>              = {Del_$1};
##[Kill] Back <n>       = {Backspace_$1};

#[One]  <left_right>= {Ctrl+$1};
#Delete 
#<n> := 1..99;
#Delete 1 word left = {Ctrl+Backspace};
#Delete 1 word right = {Ctrl+Del};
##Delete <n> Words left = {Ctrl+$2_$1};
##Kill Word              = #{Right_2}{Ctrl+Left}{Shift+Ctrl+Right}   {Del};
##
(Grab) one letter left = {Shift+Left_1};
(Grab) one letter right = {Shift+Right_1};
(Grab) one word left = {Ctrl+Shift+Left_1};
(Grab) one word right = {Ctrl+Shift+Right_1};
(Grab) (two | 2)   Words right = {Ctrl+Shift+Right_2};
(Grab) (three | 3) Words right = {Ctrl+Shift+Right_3};
(Grab) (four | 4)  Words right = {Ctrl+Shift+Right_4};
(Grab) forwards right 		   = {Ctrl+Shift+Right_4};
(Grab) (five | 5)  Words right = {Ctrl+Shift+Right_5};
(Grab) (six | 6)   Words right = {Ctrl+Shift+Right_6};
(Grab) (seven | 7) Words right = {Ctrl+Shift+Right_7};
(Grab) (eight | 8) Words right = {Ctrl+Shift+Right_8};
(Grab) (nine | 9)  Words right = {Ctrl+Shift+Right_9};
(Grab) (two | 2)   Words left = {Ctrl+Shift+Left_2};
(Grab) (three | 3) Words left = {Ctrl+Shift+Left_3};
(Grab) (four | 4)  Words left = {Ctrl+Shift+Left_4};
(Grab) forwards left 		  = {Ctrl+Shift+Left_4};
(Grab) (five | 5)  Words left = {Ctrl+Shift+Left_5};
(Grab) (six | 6)   Words left = {Ctrl+Shift+Left_6};
(Grab) (seven | 7) Words left = {Ctrl+Shift+Left_7};
(Grab) (eight | 8) Words left = {Ctrl+Shift+Left_8};
(Grab) (nine | 9)  Words left = {Ctrl+Shift+Left_9};
#
##Lines
####<up_down>
#move <n> lines down = Keys.SendInput({down_$1});
#move <n> lines up = Keys.SendInput({up_$1});
grab one line down = Keys.SendInput({Home}{Shift+end});
grab (two | 2) lines down = Keys.SendInput({End}{Home}{Shift+down_2}{Shift+left_1}{Shift+end});
grab (three | 3) lines down = Keys.SendInput({End}{Home}{Shift+down_3}{Shift+left_1}{Shift+end});
grab (four | 4) lines down = Keys.SendInput({End}{Home}{Shift+down_4}{Shift+left_1}{Shift+end});
grab (five | 5) lines down = Keys.SendInput({End}{Home}{Shift+down_5}{Shift+left_1}{Shift+end});
grab (six | 6) lines down = Keys.SendInput({End}{Home}{Shift+down_6}{Shift+left_1}{Shift+end});
grab (seven | 7) lines down = Keys.SendInput({End}{Home}{Shift+down_7}{Shift+left_1}{Shift+end});
grab (eight | 8) lines down = Keys.SendInput({End}{Home}{Shift+down_8}{Shift+left_1}{Shift+end});
grab (nine | 9) lines down = Keys.SendInput({End}{Home}{Shift+down_9}{Shift+left_1}{Shift+end});
##
grab one line up = Keys.SendInput({Home}{Shift+end});
grab (two | 2) lines up = Keys.SendInput({Home}{End}{Shift+up_2}{Shift+right_1}{Shift+home});
grab (three | 3) lines up = Keys.SendInput({Home}{End}{Shift+up_3}{Shift+right_1}{Shift+home});
grab (four | 4) lines up = Keys.SendInput({Home}{End}{Shift+up_4}{Shift+right_1}{Shift+home});
grab (five | 5) lines up = Keys.SendInput({Home}{End}{Shift+up_5}{Shift+right_1}{Shift+home});
grab (six | 6) lines up = Keys.SendInput({Home}{End}{Shift+up_6}{Shift+right_1}{Shift+home});
grab (seven | 7) lines up = Keys.SendInput({Home}{End}{Shift+up_7}{Shift+right_1}{Shift+home});
grab (eight | 8) lines up = Keys.SendInput({Home}{End}{Shift+up_8}{Shift+right_1}{Shift+home});
grab (nine | 9) lines up = Keys.SendInput({Home}{End}{Shift+up_9}{Shift+right_1}{Shift+home});
#
##grab <n> lines up = {Home}{End}{Shift+up_$1}{Home};
##move <n> lines up = Keys.SendInput({up_$f1});
##move <n> lines left = Keys.SendInput({left_$f1});
##move <n> lines right = Keys.SendInput({right_$1});
##Grab 1 line <up_down> {End}{Shift+Home};
line start = {home};
line end = {end};
##
Delete line delete = Keys.SendInput({Home}{Shift+End}{Del}{Del});
#### Paragraphs        
#Graph Start          = {Ctrl+Up}{Right}{Home};
#Graph End            = {Ctrl+Down}{Left_2}{End};
#(Paragraph|Graph) Here = {Enter}{Enter}{Left}{Left};
#new (Paragraph|Graph) = {Enter}{Enter}{Left}{Left};
#Grab graph			 = {Ctrl+Down}{Shift+Ctrl+Up};
#Grab to graph end    = {Shift+Ctrl+Down};
#Grab to graph start    = {Shift+Ctrl+Up};
#Open (Graph|Line)    = {Enter}{Enter}{Left};
#Copy Graph           = {Ctrl+Down}{Shift+Ctrl+Up}{Ctrl+c};
#Kill Graph           = {Ctrl+Down}{Shift+Ctrl+Up}{Del};
#Duplicate Graph      = {Ctrl+Down}{Shift+Ctrl+Up}{Ctrl+c}{Home}{Ctrl+v};
#
#### Entire "Flow"
Flow Start           = {Ctrl+Home};
Flow End             = {Ctrl+End};
Grab to flow start   = {Ctrl+Shift+Home};
Grab to flow end	 = {Ctrl+Shift+End};
#Copy All             = {Ctrl+a}{Ctrl+c};
#(Cut|Kill) All       = {Ctrl+a}{Ctrl+x};
#Kill Flow Here       = {Ctrl+Shift+End} {Ctrl+x};
#Kill Back Flow Here  = {Ctrl+Shift+Home}{Ctrl+x};
#Replace All         = {Ctrl+a}{Del}{Ctrl+v};
#
#### Selection         
#Kill That            = {Del};
#Cut That             = {Ctrl+x};
#Copy That            = {Ctrl+c};
##Yank That            = {Ctrl+v};
#Paste Here           = ButtonClick() {Ctrl+v};
#Duplicate That       = {Ctrl+c}{Left}{Ctrl+v};
#Keep That            = {Ctrl+c}{Ctrl+a}{Del}{Ctrl+v};
#Undo That            = {Ctrl+z};
#Undo <n>             = {Ctrl+z_$1};
#Redo That            = {Ctrl+y};9
#Kill That            = {Del};
#Cut That             = {Ctrl+x};
#Copy That            = {Ctrl+c};
#Paste That           = {Ctrl+v};
#Duplicate that       = {Ctrl+c}{Left}{Ctrl+v};
#replace <_anything> with <_anything> = {Ctrl+h} #Wait(2) $1 {tab} $2 {alt+r} {alt+r};
#replace all  <_anything> with <_anything> = {Ctrl+h} #Wait(2) $1 {tab} $2 {alt+a};
#
#Microphone off = SetMicrophone(0);
#
##Variable.Set($1, Clipboard.Get());
##Copy To    <n> = Clipboard.Set("randomstuff") {Ctrl+c} #Clipboard.WaitForNew("randomstuff",10) #Variable.Set($1, Clipboard.Get());
#camel case hello there
#####https://docs.google.com/document/d/e/2PACX-1vSGRicRT#J2iv7rzLnwYxGnUb39usUk_5o2KPxJ5YE91qv-W_lWHD1C7S4syAHM61#VAheR5lQ6hoE55W/pub#h.a1zgrxykbg1i
CamelCase(x) := EvalTemplate('("x" + %s).title()[1:].replace(" ","")', $x);
PascalCase(x) := EvalTemplate('("" + %s).title()[:].replace(" ","")', $x);
Under(x) := EvalTemplate('("" + %s).lower()[:].replace(" ","_")', $x);
CapUnder(x) := EvalTemplate('("" + %s).upper()[:].replace(" ","_")', $x);
Hyphen(x) := EvalTemplate('("" + %s).lower()[:].replace(" ","-")', $x);
Terse(x) := EvalTemplate('("" + %s).lower()[:].replace(" ","")', $x);
TerseUpper(x) := EvalTemplate('("" + %s).upper()[:].replace(" ","")', $x);
Path(x) := EvalTemplate('("" + %s).lower()[:].replace(" ","/")', $x);
LowerCase(x) := EvalTemplate('("" + %s).lower()', $x);
UpperCase(x) := EvalTemplate('("" + %s).upper()', $x);
camel <_anything> = CamelCase($1);
camelcase <_anything> = CamelCase($1);
Pascal <_anything> = PascalCase($1);
Title <_anything> = PascalCase($1);
Cap Smush <_anything> = PascalCase($1);
score <_anything> = Under($1);
underscore <_anything> = Under($1);
underscore cap <_anything> = CapUnder($1);
hype <_anything> = Hyphen($1);
terse <_anything> = Terse($1);
smush <_anything> = Terse($1);
lower case <_anything> = LowerCase($1);
lower case smush <_anything> = Terse($1);
upper case <_anything> = UpperCase($1);
upper case smush <_anything> = TerseUpper($1);
#
left square bracket = '[';
write square bracket = ']';
left curly cube bracket = '{';
curlicues bracket = '{';
curlicues right bracket = '}';
curlicues left bracket = '{';
write curly queue bracket = '}';
write paren = '(';
left paren = ')'; 
left and right parens = " ()"{left};
left and right paren = " ()"{left};
leptin right paren = " ()"{left};
'left and)' = " ()"{left};

#text () entry () () 
#exact <_anything> = $1;
#
<DaProgramName> := ( firefox = "C:\Program Files\Mozilla Firefox\firefox.exe"
				| firefox 32 = "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
				| firefox 64 = "C:\Program Files\Mozilla Firefox\firefox.exe"
				| firefox work = "%USERPROFILE%\AppData\Local\Mozilla Firefox\firefox.exe"
				| Adam = "%USERPROFILE%\AppData\Local\atom\atom.exe"
				| atom = "%USERPROFILE%\AppData\Local\atom\atom.exe"
				| Microsoft Word = "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
				| Microsoft Excel = "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
				| Word 2016 = "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE"
				| Excel 2016 = "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE"				
				| Word work = "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE"
				| Excel work = "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE"				
				| Outlook 2016 = "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE"
				| Jeannie  = "C:\Program Files (x86)\Geany\bin\geany.exe"
				| iTunes = "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps\iTunes.exe"
				| kay diff 3 = "C:\Program Files\KDiff3\bin\kdiff3.exe"
				| file zilla = "C:\Program Files (x86)\FileZilla FTP Client\filezilla.exe"
				| AnyConnect client = "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe"
				| AnyConnect = "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe"
				| Cisco AnyConnect = "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe"
				| notepad = "c:\windows\system32\notepad.exe"
				| notepad plus plus = 'CMDC:\Program Files (x86)\Notepad++\notepad++.exe'
				| Command Prompt = 'C:\Windows\System32\cmd.exe'
				| CMD = "powershell -Command 'Start-Process cmd -Verb RunAs'"
				| Explorer = 'C:\Windows\explorer'
				| file Explorer = 'C:\Windows\explorer'
				| CLI = "%windir%\system32\cmd.exe"
				| command line = "C:\windows\system32\cmd.exe"
				| Chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
				| Atom = "%USERPROFILE%\AppData\Local\atom\atom.exe"
);
#
run <DaProgramName> = AppBringUp("$1");
open Environment Variables = AppBringUp(C:\Windows\System32\SYSDM.CPL);
#
Manage Computer = AppBringUp("compmgmt.msc \s");
[Add] Remove Programs = AppBringUp(appwiz.cpl);
pipe = '|';
single quote = "'";
#crazy quote = "'";
double quote = '"';
wifi = 'wifi'; 
wifi = 'wifi';
#<n> := 0..99;
#8 oh 2 dot <n> = "802.$1";
#8 oh 2 dot <n> = "802.$1";
#eight O two dot <n> <letterKey> = "802.$1$2";
#eight O today dot <n> <letterKey> = "802.$1$2 $2";
#eight O two dot <nn> <letterKey> <letterKey> = "802.$1$2$3";
H 323 = "H.323";
H dot 323 = "H.323";
Q 931 = "Q931";
Q 921 = "Q921";
wap = "WAP";
waps = "WAPs";
W P A V 2 = "WPAv2";
WPA V2 = "WPAv2";
WPA V to = "WPAv2";
The LAN = "vlan";
V LAN = "vlan";
#start TorontoCert Verizon
#nonce = "Nonce";
sert = "Cert";
tour on toe = "Toronto";
ver I zon = "Verizon";
com cast = "Comcast";
ping = "ping";
back to RE = "battery";
C U C M = "CUCM";
UCCX = "UCCX";
UC CX = "UCCX";
UC = "UC";
Flex connect = "flexconnect";
net flow = "netflow";
ssh = AppBringUp("C:\utilities\kitty.exe -ssh");
IP fee for <n256> . <n256> . <n256> . <n256> = "$1.$2.$3.$4";
IP the four <n256> . <n256> . <n256> . <n256> = "$1.$2.$3.$4";
IPV 4 <n256> . <n256> . <n256> . <n256> = "$1.$2.$3.$4";
dot HTM = ".htm";
dot HTML = ".html";
dot net = ".net";
dot com = ".com";
. PHP = ".php";
. CFG = ".cfg";
.CFG  = ".cfg";
. doc = ".doc";
. doc x = ".docx";
. xls = ".xls";
. xls x = ".xlsx";
. VHV = ".php";
. VHP = ".php";
. Com = ".com";
. com = ".com";
. Edu = ".edu";
. gov = ".gov"; 
.  TXT = ".txt";
. py = ".py"
at = @;
JIRA = jira;
jeer uh = "jira"
padded equals = ' = '; 
padded equal sign = ' = ';
padded '=' = ' = ';
padded '=' = ' = ';
padded dash = ' - ';
padded hyphen = ' - ';
padded pipe = ' | ';
T FTP = 'TFTP'; 
VPN v 4 = 'VPNv4';
VPN before = 'VPNv4';
mpls = 'MPLS';
I G P = 'IGP';
B G P = 'BGP';
B G P v 4 = 'BGPv4';
B G P before = 'BGPv4';
B G P fore = 'BGPv4';
BGP before = 'BGPv4';
O S P F = 'OSPF';
E I G R P = 'EIGRP'; 
EI GRP = 'EIGRP';
N R P E = 'NRPE';
an RPE = 'NRPE';
A ray = array;
are right = array;
i phone = iPhone;
sip = sip;
admin = admin;
Log stash = logstash;
oo boon 2 = ubuntu;
cabana = kibana;
ki bah nah = kibana;
chip on a = kibana;
tip on a = kibana;
con fig = config; 
sis log = syslog;
#two = to;
ver eye zon = Verizon;
net mask = netmask;
root = root;
rowt = route;
bang = "!";
Gigabit per second = Gbps;
QOS = QoS;
SAV = ASAv;
like the one = IKEv1;
IKE v 1 = IKEv1;
IQ one = IKEv1;
IKEv2 = IKEv2;
IQ to = IKEv2; 
Ike be to = IKEv2;
vocola two = Vocola2;
vo cola to = Vocola2;
vocola to = Vocola2;
vocola two = Vocola2;
vocola 2 = Vocola2;
vo cola 2 = Vocola2;
forward slash twenty 4 = "/24";
code or = coder;
voice code or = voice{space}coder;
I C M P = icmp ;
I CMP = icmp ;
G711 = 'g7ll';
space = {space};
