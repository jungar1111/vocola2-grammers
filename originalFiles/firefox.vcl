include Unimacro.vch;
include URLs.vch;
# Voice commands for firefox
test firefox = "in firefox";

Address Bar = {Ctrl+l};

#go home = {Ctrl+l} "file:///C:/Users/jungar/OneDrive%20-%20Avis%20Budget%20Group/index.html" {enter};
open <url> = {Ctrl+l} Wait(100) {Ctrl+a} http://$1 {Enter};
open  HTTP <url> = {Ctrl+l} Wait(100) {Ctrl+a} http://$1 {Enter};
open HTTPS <url> = {Ctrl+l} https:// $1 {Enter};
open secure <url> = {Ctrl+l} https:// $1 {Enter};
open f t p <url> = {Ctrl+l} ftp:// $1 {Enter};

[Web] Search For <_anything> = {Ctrl+k} $1 {Enter};

New Window = {Ctrl+n};
new private window = {Ctrl+Shift+P};
#Bigger 1 (font size)
#Smaller 3
(Bigger=+ | Smaller=-) [Text] 1..4 = {Ctrl+$1_$2};

<showfirefox> := (  downloads  = {Ctrl+J} | 
					add-ons = {Ctrl+Shift+A} | 
					web console = {Ctrl+Shift+K} | 
					developer tools = {Ctrl+Shift+I} |
					inspector = {Ctrl+Shift+C} | 
					debugger = {Ctrl+Shift+S} | 
					style editor = {Shift+F7} | 
					network = {Ctrl+Shift+E} | 
					page source = {Ctrl+U} | 
					bookmarks = {Ctrl+i} | 
					downloads = {Ctrl+J}
);

show <showfirefox> = $1;
hi developer tools = {Ctrl+Shift+I};
hide developer tools = {Ctrl+Shift+I};
clear recent history = {Ctrl+Shift+Del};
hi bookmarks = {Ctrl+i};

### Tabs
New Tab = {Ctrl+t};
Close (Tab|That) = {Ctrl+w};
Next Tab = {Ctrl+Tab};
Previous Tab = {Ctrl+Shift+Tab};
Move Tab Right = {Ctrl+Shift+PgDn};
Move Tab Left = {Ctrl+Shift+PgUp};
move tab to end = {Ctrl+Shift+End};
show history = {Ctrl+H};
add bookmark = {Ctrl+D};
bookmark this tab = {Ctrl+D};
Mute audio = {Ctrl+M};
unmute audio = {Ctrl+M};

new email = n;
send email = {Ctrl+Enter};
reply = r;
reply all = a;
forward = f;
mark as read  = k;
mark as unread = {Shift+k};

Mail:
#	Vocola outlook = Vocola.Print("-outlook in browser-");
	new e-mail = {Ctrl+N} Wait(100) n;    
    send e-mail = {Ctrl+Enter};
    open e-mail = {Enter};
    'reply to email' = {Ctrl+R};
    'delete email' = {Del};
    close email = {ESC};
	move to folder = {ESC} Wait(100) {Down_1} Wait(100) {Up_1} Wait(100) v Wait(100) {Down_1};
	'reply to all' = {Ctrl+Shift+r};
	'for word email' = {Shift+f};
    forward email = {Shift+f};
    previous e-mail = {Ctrl+','};
	next e-mail = {Ctrl+'.'};
    select all messages = {Ctrl+a};
    clear all messages = {Esc};
    go to e-mail = {Ctrl+Shift+1};
    go to calendar = {Ctrl+Shift+2};
    go to contacts = {Ctrl+Shift+3};
    go to inbox = g i;
    go to drafts = g d;
    go to sent = g s;
    search email = {Alt+q};
    insert hyperlink = {Ctrl+k};
    show help = "?";
    new folder = {Shift+E};
    mark as read = {Ctrl+q};
    mark as unread = {Ctrl+u};
    
Calendar:
    go to today = {Home};
    go to previous = {Shift+Left};
    go to next = {Shift+Right};
    new meeting = {Ctrl+N} Wait(100) n;
    new appointment = {Ctrl+N} Wait(100) n;
    save appointment = {Ctrl+s};
    Send meeting = {Ctrl+Enter};
    insert hyperlink = {Ctrl+k};
    day view = {Shift+Alt+1};
    work week view = {Shift+Alt+2};
    week view = {Shift+Alt+3};
    month view = {Shift+Alt+4};
    print calendar = {Ctrl+P};
    search calendar = {Alt+q};
    go to e-mail = {Ctrl+Shift+1};
    go to calendar = {Ctrl+Shift+2};
    go to contacts = {Ctrl+Shift+3};
    
    
            
#<direction>  := Left | Right | Up | Down;
#<up_down>    := Up | Down;
#<left_right> := Left | Right;
#<start_end>  := ( Start={Home} | End={End} );
#<to_start_end>  := ( Start=Home | End=End );
#
### Characters + 
#crazy 1 <direction>        = Keys.SendInput({$1_1});
#1 of = Keys.SendInput({up_1});
#Vocola.Print("-outlook2 in browser-");
#Keys.SendInput({win+N});
#HeardWord(press, control, shift, N);
# {Ctrl+Shift+N};
#	 Go to inbox = "g" Wait(50) "i";
#	 Go to drafts = "g" Wait(50) "d";
#	 Go to sent = "g" Wait(50) "s";
