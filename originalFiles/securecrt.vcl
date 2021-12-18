include Unimacro.vch;
# Voice commands for securecrt

include keys.vch;

<n> := 0..100;

enter = {Enter};
duplicate session = Keys.SendInput({ctrl+shift+LeftButton});
restart session = Keys.SendInput({alt+space}) Wait(100) Keys.SendInput("r") {enter};
reset terminal = {alt+space} t;
copy all to clipboard = {alt+space} o;
clear scroll back = {alt+space} l;
Minimize Window = {alt+space} n;

SSH = "ssh ";

#linux commands
jungar | root | zipcar.com | data.host | .14 | ussomlogp01 :
	test Lennix = "in vocala linux";
	L/S minus AF = 'ls -aF' {Enter};
	LS minus LAF = 'ls -laF' {Enter};
	LS minus LAFSlough
	DIR			= 'ls -aF' {Enter};
	DAR			= 'ls -aF' {Enter};
	DF 			= 'df' {Enter};
	DF minus H		= 'df -h' {Enter};
	VI				= 'vi ';
	vim				= 'vi ';
#	vim <_anything>	= 'vi $1';
	control our = {Ctrl+r};
	control See = {Ctrl+c};
	colon Q = ':q'{enter};
	': Q' = ':q'{enter};
	Shift the Z = "ZZ" {enter};
	logout = 'logout';
	FG = 'fg';
	star = '*';
	bash = bash;
	sudo bash = 'sudo bash' {Enter};
	pseudo bash = 'sudo bash' {Enter};
	pseudo-Bash = 'sudo bash' {Enter};
	pseudo = 'sudo ';
	HTML = 'html';
	find forward slash = "find / -name  -print" {Left_7};
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
					remote
					);
	directory <directory> = "$1";
	cd <directory> = "cd $1" {Enter};
	CD = "cd ";
	PW D = "pwd" {Enter};
	RM* = "rm *";
	Armida staff = "rm -f ";
	Armani staff = "rm -f ";
	Armida star = "rm -r ";
	Armani star = "rm -r ";
	our endeavor = "rmdir ";
	RN DIR = "rmdir ";
	r m = "rm ";
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
	tail minus F grep = "tail -f  | grep " {Left_8}; 
	tail minus F grep minus V = "tail -f  | grep -v " {Left_11}; 
	cat = "cat ";
	grep = "grep ";
	grep minus the = "grep -v ";
	change group = 'chgrp ';
	s s h = "ssh ";
	SSH jungar at = "ssh jungar@";
	'S FTP' = "sftp ";
	'crazy me' = "sftp ";
	s f t p jungar at = "sftp jungar@";
#	S FTP jumper at = "sftp jungar@";
	SEP = "scp ";
	M got* = "mget *";
	M put* = "mput *";
	shutdown minus H now = 'shutdown -h now';
	<gitcommand> := ( 'pull origin master' |
					clone |
					checkout |
					branch |
					'branch minus D' = 'branch -d' |
					stash |
					'commit minus am' = 'commit -am ""{Left_1}'
	);
	get <gitcommand> = "git $1";
#	git <gitcommand> = "git $1"; 
	G unzip = "gunzip ";
	I have config = "ifconfig ";
	I have config minus A = "ifconfig -a";
	I have config dash A = "ifconfig -a";
	IP config = "ifconfig ";
	IP config minus A = "ifconfig -a";
	IP config dash A = "ifconfig -a";
	maintenance = "maintenance{Enter}";
	tar minus XV F = "tar -xvf ";
	tar minus CV F = "tar -cvf ";
	P S minus E F = "ps -ef ";
	P S minus E F pipe grep = "ps -ef | grep ";
	NS Lookup = "nslookup ";
	fix leading char = {ctrl+a} {ctrl+f} {Backspace} {ctrl+e};
	fix leading IP address char = {alt+b} {alt+b} {alt+b} {alt+b} {del};

	#bash shortcuts
#Ctrl + A	Go to the beginning of the line you are currently typing on
#Ctrl + E	Go to the end of the line you are currently typing on
#Ctrl + L	Clears the Screen, similar to the clear command
#Ctrl + U	Clears the line before the cursor position. If you are at the end of the line, clears the entire line.
#Ctrl + H	Same as backspace
#Ctrl + R	Let's you search through previously used commands
#Ctrl + C	Kill whatever you are running
#Ctrl + D	Exit the current shell
#Ctrl + Z	Puts whatever you are running into a suspended background process. fg restores it.
#Ctrl + W	Delete the word before the cursor
#Ctrl + K	Clear the line after the cursor
#Ctrl + T	Swap the last two characters before the cursor
#Esc + T	Swap the last two words before the cursor
#Alt + F	Move cursor forward one word on the current line
#Alt + B	Move cursor backward one word on the current line
#Tab	Auto-complete files and folder names

#IOS	
#10. | 192. | 172. | 216. | 8. | .173 | fo-isp | 65. | 208. | 24. | 50. | 96. | 75. | uklonucbackp01 ;
10. | 192. | 172. | 216. | 8. | .173 | fo-isp | 65. | 208. | 207. | 24. | 50. | 96. | 75. | 12. | msd-3750 :
	test Cisco = "in vocala cisco";
	<intname> := 'f' | 'g' | 's' | 'Serial' | 'Gigabit' | 'Ethernet' | 'FastEthernet' | 'GigabitEthernet' | 'Dialer' | 'Tunnel' | again = 'Gig' | gig | Lubec = Loopback ;
	interface <intname> <n> = "interface " $1 EvalTemplate($2);
	interface <intname> <n> <n> = "interface " $1 EvalTemplate($2) "/" EvalTemplate($3);
	into <intname> <n> <n> <n> = "int $1$2/$3/$4{Enter}";
	int <intname> <n> <n> <n> = "int $1$2/$3/$4{Enter}";
	end <intname> <n> <n> <n> = "int $1$2/$3/$4{Enter}";
	and <intname> <n> <n> <n> = "int $1$2/$3/$4{Enter}";
#	interface gigabit 1/0/37
#	interface gig 1/0/37
#
	set IPDS EPF = set ip dscp ef;

	<firstword>  := ('clock' | 
					'debug' | 
					'on debug' = 'undebug' |
					'and debug' = 'undebug' |
					show |
					include |
					call |
					clear | 
					conf |
					copy |
					crypto |
					'debug' | 
					delete | 
					dir |
					'der' = 'dir' |
					exit |
					logout |
					reload |
					ssh |
					telnet | 
					undebug |
					'right' = 'wr' |
					voice | 
					more | 
					logging | 
					shutdown | 
					verify | 
					boot | 
					utils |
					term | 
					boot start marker = boot-start-marker | 
					warm reboot = warm-reboot |
					boot end marker = boot-end-marker | 
					dot 11 = dot11 |
					IP = ip | 
					triple a = aaa | 
					Multilink = multilink | 
					voice card = voice-card | 
					DSP = dsp | 
					voice | 
					IPV 4 = ipv4 | 
					address hiding = address-hiding | 
					IP = ip | 
					class map = class-map | 
					policy map = policy-map | 
					set | 
					Gateway accounting = gw-accounting | 
					media type = media-type  | 
					permit | 
					SNMP server = snmp-server | 
					control plan = control-plane | 
					MGCP = mgcp | 
					Scipio we = sip-ua | 
					SIP UA = sip-ua
	);
	<secondword> := ( 'time zone' = timezone |
						'summer time' = summer-time |
						'C C sip' = ccsip |
						all |
						isdn |
						mon |
						no |
						mem |
						"Ma'am" = mem |
						"man" = mem |
						Ron = run |
						run dash config = run-config |
						run |
						Run = run |
						ver	|
						inventory | 
						and = int |
						counters |
						int |
						ip |
						IP = ip | 
						inventory |
						'I N V' = inv |
						'ind' = inv |
						crypto |
						len | 
						cancel | 
						ipsec | 
						d h c p d = 'dhcpd' | 
						'dot 1 x' = dot1x | 
						client |
						debug | 
						cdp | 
						system | 
						'System : running config' = 'system:running-config' | 
						monitor | 
						TFTP = 'tftp:' | 
						log | 
						'slash M D five' = "/md5" | 
						ntp | 
						SSH = "ssh" | 
						system = syslog | 
						syslog | 
						source route = source-route | 
						Seth = cef | 
						new model = new-model | 
						bundle name = bundle-name | 
						0 | 1 | 2 | 3 | 
						services |
						service | 
						call | 
						RTP =  | 
						address | 
						match-any | 
						RJ 45 = rj45 | 
						forward protocol = forward-protocol | 
						HT tepee = http | 
						route | 
						access list = access-list | 
						UDP = udp | 
						community | 
						location | 
						contact | 
						enable | 
						host | 
						profile | 
						Exley = xlate
	);
		<thirdword> := ( 'E D T' = EDT | 
					 'E S T' = EST |
					 messages |
					 'Q 921' = q921 |
					 'Q 931' = q931 |
					 mon |
					 username |
					 pipe = '|' |
					 interface |
					 int |
					 nhrp |
					 ike v2 = ikev2 |
					 like the 2 = ikev2 |
					 isakmp | 
					 ipsec |
					 binding | 
					 'triple A' = aaa | 
					 'a a a' = aaa | 
					 neighbors | 
					 'D H C P D' = dhcpd | 
					 debugging | 
					 flash = 'flash:' | 
					 server |
					 secure server = secure-server |
					 status |
					 outside0 | 
					 outside1 | 
					 informational | 
					 debugging | 
					 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 | 40 | 41 | 42 | 43 | 44 | 45 | 46 | 47 | 48 | 49 | 50 | 51 | 52 | 53 | 54 | 55 | 56 | 57 | 58 | 59 | 
					 sessions | 
					 authenticated | 
					 DSP form = dspfarm | 
					 send alert = send-alert |
					 send receive send-recv | 
					 void = voip  | 
					 trusted | 
					 version | 
					 The SEP = dscp | 
					 DSC = dscp | 
					 'DSC P' = dscp | 
					 ND = nd | 
					 extended | 
					 any | 
					 traps | 
					 default | 
					 Nat = nat
	);
	<fourthword> := ( recurring |
						include |
						section |
						brief |
						nhs |
						sa | 
						enable | 
						disable | 
						ha | 
						platform | 
						protocol | 
						timers | 
						add | 
						delete | 
						restart | 
						list | 
						1 | 2 | 3 | 4 | 
						EF = ef | 
						aF 31 = af31 | 
						CS 3 = cs3 | 
						any | 
						config
	);
	<fifthword> := (  username |
					  interface |
					  detail |
					  redundancy | 
					  ip route | 
					  dial-peer voice | 
					  snmp | 
					  logging | 
					  boot | 
					  range
	);
	<firstword> = "$1 ";
	<firstword> <secondword> = "$1 $2{Enter}";
	<firstword> <secondword> <thirdword> = "$1 $2 $3{Enter}";
	<firstword> <secondword> <n> = "$1 $2 $3{Enter}";
	<firstword> <secondword> <thirdword> <fourthword> = "$1 $2 $3 $4{Enter}";
	<firstword> <secondword> <n> <fourthword> = "$1 $2 $3 $4{Enter}";
	<firstword> <secondword> <thirdword> <fourthword> <fifthword> = "$1 $2 $3 $4 $5{Enter}";
	<firstword> <secondword> <n> <fourthword> <fifthword> = "$1 $2 $3 $4 $5{Enter}";
	<firstword> <secondword> into <intname> <n> = "$1 $2 int $3$4{Enter}";
	<firstword> <secondword> into <intname> <n> <n> = "$1 $2 int $3$4/$5{Enter}";
	<firstword> <secondword> into <intname> <n> <n> <n> = "$1 $2 int $3$4/$5/$6{Enter}";
	no <firstword> = "$1 ";
	no <firstword> <secondword> = "no $1 $2{Enter}";
	no <firstword> <secondword> <thirdword> = "no $1 $2 $3{Enter}";
	no <firstword> <secondword> <n> = "no $1 $2 $3{Enter}";
	no <firstword> <secondword> <thirdword> <fourthword> = "no $1 $2 $3 $4{Enter}";
	no <firstword> <secondword> <n> <fourthword> = "no $1 $2 $3 $4{Enter}";
	no <firstword> <secondword> <thirdword> <fourthword> <fifthword> = "no $1 $2 $3 $4 $5{Enter}";
	Control zed = {Ctrl+z};
	Control See = {Ctrl+z};
	isdn = ' isdn ';
	term Ron = 'term mon' {enter};
	term run = 'term mon' {enter};
	term mom = 'term mon' {enter};
	term gnome on = 'term no mon' {enter};
	config T = 'config t'{Enter};
	right mem = 'wr mem';
	IP = 'ip';
	CDP = 'cdp';
	switch type = 'switch-type';
	primary and I = 'primary-ni';
	incoming voice = 'incoming-voice';
	pry = 'PRI';
	p r i = 'PRI';
	name server = 'name-server';
	network clock participate = 'network-clock-participate';
	network clock select = 'network-clock-select';
	tee 1 = 'T1';
	name server = 'name-server';
	and fast = 'nfas';
	queue 9 31 = ' q931';
	queue 9 21 = ' q921';
	Q = q;
	undebug = 'undebug ';
	debug = 'debug ';
	disable - all = 'disable-all';
	disable all = 'disable-all';
	enable = 'enable'{Enter};
	and able = 'enable'{Enter};
	an able = 'enable'{Enter};
#	s s h = "ssh ";
	hoo = "who"{enter};
	delete line = {ctrl+x};
	fix leading char = {ctrl+a} {ctrl+f} {Backspace} {ctrl+e};
	control z = {ctrl+z};
	control zed = {ctrl+z};
	
#duplicate session = Keys.SendInput({ctrl+shift+LeftButton});	
#Ctrl+A 	Move cursor to the beginning for the line 	Alpha, First letter == beginning
#Ctrl+E 	Move cursor to the end of the line 	E for End
#Ctrl+F 	Move cursor forward one character 	F for Forward
#Ctrl+B 	Move cursor backward 	B for Backward
#Esc+F 	Moves forward one word 	Always forget the escape version
#Esc+B 	Moves backwards one word 	Ditto
#Ctrl+P 	Previous command 	P for Previous – also up arrow
#Ctrl+N 	Next command 	N for Next – also down arrow
#Ctrl+W 	Delete the word to the left from the cursor 	W for Word
#Ctrl+U 	Delete the whole line 	??
#Ctrl+T 	Swap or transpose the current character with the one before it 	T for Transpose
#Ctrl+K 	Erase characters from the cursor to end of the line 	??
#Ctrl+X 	Erase characters from the cursor to beginning of the line 	??
#Esc+D 	Delete from Cursor to end of word 	
#Delete 	Removes the character to the right of the cursor 	
#Backspace 	Removes the character to the left of the cursor 	
#Up Arrow 	Allows you to scroll forward through previous commands 	
#Down Arrow 	Allows you to scroll backwards through previous commands
#Ctrl+L 	Reprint the line 	L for Line
#Ctrl+R 	Refresh 	R for Repeat – starts a new line, with the same command shown (If the #system sends a message to the screen while a command is being entered and your are not using #line synchonisation
#Tab 	Command autocomplete 	No Comment
#Ctrl+C 	Exit. Exit from config mode 	
#Ctrl+Z 	Apply the command line and exit from config mode ie. return to privileged EXEC #mode. 	
#Ctrl+Shift+6 (X) 	CTRL-SHIFT-6 is one action, the X is the second action 	
#Esc, C 	Makes the letter at the cursor uppercase. 	C for Capital
#Esc, L 	Changes the word at the cursor to lowercase 	L for Lower
#Esc, U 	Makes letters from the cursor to the end of the word uppercase. 	U for Uppercase
#Using the Delete Buffer Shortcut 	Description 	Mnemonic
#The buffer stores the last ten items that have been deleted using Ctrl-K, Ctrl-U, or Ctrl-X
#Ctrl-Y 	Paste the most recent entry in the delete buffer 	Y for “Yank” as in Yank from buffer
#Esc-Y 	Paste the Previous entry in the history buffer 	Y for “Yank” as in Yank from buffer
