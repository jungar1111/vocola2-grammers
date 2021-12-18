# Voice commands for kitty/putty
##include Unimacro.vch;

include keys.vch;

<n> := 0..100;

enter = {Enter};
duplicate session = Keys.SendInput({alt+space}) Wait(100) Keys.SendInput("d");
restart session = Keys.SendInput({alt+space}) Wait(100) Keys.SendInput("r") {enter};
reset terminal = {alt+space} t;
copy all to clipboard = {alt+space} o;
clear scroll back = {alt+space} l;
Minimize Window = {alt+space} n;
trace route = traceroute;
s s h = "ssh ";
SSH = "ssh ";
pain = "ping ";
ping = "ping ";
F pain = "fping ";
F ping = "fping ";

10. | 192. | 172. | 216. | 8. | .174 | .173 | 65. | 208. | 207. | 24. | 50. | 96. | 75. | 12. | 155. | 166. :
	test Cisco = "in vocola cisco";
	<intname> := 'f' | 'g' | 's' | 'e' | 'Serial' | 'Gigabit' | 'FastEthernet' | 'GigabitEthernet' | 'Dialer' | 'Tunnel' | again = 'Gig' | gig | Lubec = Loopback | BDI | Vlan | BVI | Ethernet ;:
	interface port channel <n> = "interface port-channel " EvalTemplate($1);
	interface port channel <n> oh <n> = "interface port-channel " EvalTemplate($1) "0" EvalTemplate($2);
	interface port channel <n> <n> <n> = "interface port-channel " EvalTemplate($1) EvalTemplate($2) EvalTemplate($3);:::

root | root@ | msd | data.host | .14 | .214 | .181 | .28 | virl :
	test linux = "in vocala linux";
	test Lenox = "in vocala linux";
	L/S minus AF = 'ls -aF' {Enter};
	LS minus LAF = 'ls -laF' {Enter};
	f disk minus l 	= 'fdisk -l' {Enter};
	FDISK my cell 	= 'fdisk -l' {Enter};
	PV display 	= 'pvdisplay' {Enter};
	LV display 	= 'lvdisplay' {Enter};
	DIR			= 'ls -aF' {Enter};
	DAR			= 'ls -aF' {Enter};
	DF 			= 'df' {Enter};
	DF minus H		= 'df -h' {Enter};
	VI				= 'vi ';
	vim				= 'vi ';
	VI <_anything>	= 'vi $1';
	vim <_anything>	= 'vi $1';
	them <_anything>	= 'vi $1';
	control our = {Ctrl+r};
	control See = {Ctrl+c};
	colon W = ':w'{enter};
	colon Q = ':q'{enter};
	': Q' = ':q'{enter};
	D D = 'dd';
	Shift the Z = "ZZ" {enter};
	shifts easy = "ZZ" {enter};
	logout = 'logout';
	FG = 'fg';
	star = '*';
	sudo bash = 'sudo bash' {Enter};
	pseudo bash = 'sudo bash' {Enter};
	pseudo dash = 'sudo bash' {Enter};
	pseudo-Bash = 'sudo bash' {Enter};
	pseudo = 'sudo ';
	HTML = 'html';
	find name = "find / -name  -print" {Left_7};
	find file = "find / -name  -print" {Left_7};
	<directory> := (forward slash = '/' |
					slash = '/' |
					/var/W WW = '/var/www' |
					/bar = '/var' |
					slash var slash log = '/var/log' |
					slash var slash local = '/var/local' |
					slash user = '/usr' |
					slash user slash local = '/usr/local' |
					slash user slash lib = '/usr/lib' |
					slash user slash lib 64 = '/usr/lib64' |
					slash etc = '/etc' | 
					slash temp = '/tmp' |
					/SC = '/etc' |
					/at the = '/etc' |
					/@see/admit that the = '/etc/init.d' |
					slash Data Slash N F SEN = '/data/nfsen' |
					CFC = 'etc' |
					dot dot = '..' |
					dash = '-' |
					html |
					bin |
					nagios |
					bin red hat = 'bin_redhat' |
					squiggle jungar = '~jungar' | 
					squiggle = '~' | 
					plugins |
					platoons = 'plugins' |
					remote |
					r said = rsyslog | 
					r syslog = rsyslog | 
					rsyslog
					);
	directory <directory> = "$1";
	cd <directory> = "cd $1" {Enter};
	CD <directory> = "cd $1" {Enter};
	CD = "cd ";
	PW D = 	"pwd" {Enter};
	RM* = "rm *";
	Armida staff = "rm -f ";
	Armani staff = "rm -f ";
	Armida star = "rm -r ";
	Armani star = "rm -r ";
	RN DIR = "rmdir ";
	arm <_anything> . txt = "rm $1.txt";
	R M <_anything> dot txt = "rm $1.txt";
	r m <_anything> = "rm $1";
	R M <_anything> = "rm $1";
	del <_anything> = "rm $1";
	Aram = "rm ";
	maker <directory> = "mkdir $1";
	maker = "mkdir ";
	make their = "mkdir ";
	ch group = "chgrp ";
	to group = "chgrp ";
	ch mod = "chmod ";
	ch mod <n> <n> <n> = "chmod $1$2$3 ";
	C P = "cp ";
	copy = "cp ";
	Move = "mv ";
	MV = "mv ";
	rename = "mv ";
	Chon = "chown ";
	had minus <n> = "head -$1 ";
	tail - <n> = "tail -$1 ";
	tail minus F = "tail -f "; 
	tail minus F grep minus V = "tail -f  | grep -v " {Left_11}; 
	cat = "cat ";
	grep = "grep ";
	grep minus the = "grep -v ";
	change 	group = 'chgrp ';
	'S FTP' = "sftp ";
	s f t p jungar at = "sftp jungar@";
	S FTP jumper at = "sftp jungar@";
	SEP = "scp ";
	M got* = "mget *";
	M put* = "mput *";
	shutdown minus H now = 'shutdown -h now';
#	<gitcommand> := ( 	'pull origin master' |
#					clone |
#					checkout |
#					branch |
#					'branch minus D' = 'branch -d' |
#					stash |
#					'commit minus am' = 'commit -am ""{Left_1}'
#	);
#	get <gitcommand> = "git $1";
#	git <gitcommand> = "git $1"; 
	G unzip = "gunzip ";
	I have config = "ifconfig ";
	I have config minus A = "ifconfig -a";
	I have config dash A = "ifconfig -a";
	IP config = "ifconfig ";
	IP config minus A = "ifconfig -a";
	IP config dash A = "ifconfig -a";
	tar minus XV F = "tar -xvf ";
	tar minus CV F = "tar -cvf ";
	P S minus E F = "ps -ef ";
	P S minus E F pipe grep = "ps -ef | grep ";
	NS Lookup = "nslookup ";
	fix leading char = {ctrl+a} {ctrl+f} {Backspace} {ctrl+e};
	fix leading IP address char = {alt+b} {alt+b} {alt+b} {alt+b} {del} {ctrl+e};
	delete line = {end} {ctrl+u};
	clear line = {end} {ctrl+u};
	T shark = tshark;
	LSB underscore release - a = "lsb_release -a";


