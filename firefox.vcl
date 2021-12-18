# Voice commands for firefox
include URLs.vch;
# Voice commands for firefox
test firefox = "in firefox";

Search bar = {Ctrl+k};
Address Bar = {Ctrl+l};
[Web] Search For <_anything> = {Ctrl+k} $1 {Enter};

New Window = {Ctrl+n};
new private window = {Ctrl+Shift+P};
#(Figure=+ | Bigger=+ | Smaller=-) [Text] One = {CtrlV1_1};
#(Figure=+ | Bigger=+ | Smaller=-) [Text] (2 | to | two) = {CtrlV1_2};

<showfirefox> := (  add-ons = {Ctrl+Shift+A} | 
#					downloads  = {Ctrl+J} | 
					web console = {Ctrl+Shift+K} | 
					developer tools = {Ctrl+Shift+I} |
					inspector = {Ctrl+Shift+C} | 
#					debugger = {Ctrl+Shift+S} | 
					style editor = {Shift+F7} | 
#					network = {Ctrl+Shift+E} |
#					page source = {Ctrl+U} | 
					bookmarks = {Ctrl+b} |
					downloads = {Ctrl+j}
);
show <showfirefox> = $1;
<hidefirefox> := (  add-ons = {Ctrl+Shift+A} | 
#					downloads  = {Ctrl+J} | 
					web console = {Ctrl+Shift+K} | 
					developer tools = {Ctrl+Shift+I} |
					inspector = {Ctrl+Shift+C} | 
#					debugger = {Ctrl+Shift+S} | 
					style editor = {Shift+F7} | 
#					network = {Ctrl+Shift+E} |
#					page source = {Ctrl+U} | 
					bookmarks = {Ctrl+b} | 
					downloads = {Ctrl+w}		
);
hide <hidefirefox> = $1;
clear recent history = {Ctrl+Shift+Del};

### Tabs
New Tab = {Ctrl+t};
Close (Tab|That) = {Ctrl+w};
Next Tab = {Ctrl+PgDn};
Previous Tab = {Ctrl+PgUp};
Move Tab Right = {Ctrl+Shift+PgDn};
Move Tab Left = {Ctrl+Shift+PgUp};
#moved tab to end = {Ctrl+Shift+End};
#move tab to end = {Ctrl+Shift+End};
(show|hide) history = {Ctrl+h};

#add bookmark = {Ctrl+d};
bookmark this tab = {Ctrl+d};
#new audio = {Ctrl+M};
(Mute|unmute) (that|audio) = {Ctrl+m};
#unmute audio = {Ctrl+M};
restore window = {Alt+s} Wait(100) {Down} Wait(100) {Down} Wait(100) {Down} Wait(100) {Right} Wait(100) {Enter};

#Outlook mail on web

Go Back = {Alt+Left};
Go Forward = {Alt+Right};
show Home page = {Alt+Home};
Open File = {Ctrl+o};
Reload = {F5} {Ctrl+R};
Reload (override cache) = {Ctrl+F5} {Ctrl+Shift+R};
#Stop = Esc
Page Down = {PgDn} " ";
Page Up =  {PgUp};
Go to end (of Page)  = {End};
Go to beginning (of Page)  = {Home};
#Move to Next Frame, Pop-Up 	F6
#Move to Previous Frame, Pop-Up 	Shift + F6

find again = {Ctrl+g};
find previous = {Ctrl+Shift+g};

Toggle full screen = {F11};

###]
###Start at WIndows and Tabs
###
###
#Mail:
#	Vocola outlook = Vocola.Print("-outlook in browser-");
#	new e-mail = {Ctrl+N} Wait(100) n;    
#   send e-mail = {Ctrl+Enter};
#   open e-mail = {Enter};
#   'reply to email' = {Ctrl+R};
#   'delete email' = {Del};
#   close email = {ESC};
#					move to folder = {ESC} Wait(100) {Down_1} Wait(100) {Up_1} Wait(100) v Wait(100) {Down_1};
#					'reply to all' = {Ctrl+Shift+r};
#					'for word email' = {Shift+f};
#   forward email = {Shift+f};
#   previous e-mail = {Ctrl+','};
#	next e-mail = {Ctrl+'.'};
#   select all messages = {Ctrl+a};
#   clear all messages = {Esc};
#   go to e-mail = {Ctrl+Shift+1};
#   go to calendar = {Ctrl+Shift+2};
#   go to contacts = {Ctrl+Shift+3};
#   go to inbox = g i;
#   go to drafts = g d;
#   go to sent = g s;
#   search email = {Alt+q};
#   insert hyperlink = {Ctrl+k};
#   show help = "?";
#   new folder = {Shift+E};
#   mark as read = {Ctrl+q};
#   mark as unread = {Ctrl+u};
#Outlook calendar in web
#Calendar:
#    go to today = {Home};
#    go to previous = {Shift+Left};
#    go to next = {Shift+Right};
#    new meeting = {Ctrl+N} Wait(100) n;
#    new appointment = {Ctrl+N} Wait(100) n;
#    save appointment = {Ctrl+s};
#    Send meeting = {Ctrl+Enter};
#    insert hyperlink = {Ctrl+k};
#    day view = {Shift+Alt+1};
#    work week view = {Shift+Alt+2};
#    week view = {Shift+Alt+3};
#    month view = {Shift+Alt+4};
#    print calendar = {Ctrl+P};
#    search calendar = {Alt+q};
#    go to e-mail = {Ctrl+Shift+1};
#    go to calendar = {Ctrl+Shift+2};
#    go to contacts = {Ctrl+Shift+3};