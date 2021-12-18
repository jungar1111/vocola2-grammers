##include Unimacro.vch;
# Voice commands for EXPLORER

#include _vocola.vcl

new Explorer window = {Ctrl+n};

### View

#Refresh [View] = {Ctrl+r};
#(Show|View) (Details=d | List=l) = {Alt+v} $2;
#Search = {Ctrl+e};
#Address    = {Alt+d};
#Left Side  = {Alt+d}{Tab_2}{Left};
#Right Side = {Alt+d}{Shift+Tab}{Left};
#Go (Back=Left | Forward=Right | Up) = SendSystemKeys({Alt+$1});
#Go (Back=Left | Forward=Right) 1..10 = SendSystemKeys({Alt+$1_$2});
#(Copy={Ctrl+c} | Paste={Ctrl+v} | Go="") (Address|URL) = {Alt+d} $1;

### Folders

include folders.vch;

Go to <folder> = {Alt+d} $1 {Enter}{Tab_2} SendSystemKeys({Alt+NumKey+});
New Folder = {Alt+h}n;
###New Folder = {Ctrl+Shift+N};
#Folders = {Alt+v}eo;
#Open Folder = {Alt+f}{Enter};  # after a search
#Expand That   = SendSystemKeys({Alt+NumKey+});
#Collapse That = SendSystemKeys({Alt+NumKey-});
#Share That = {Alt+f}r Wait(1000) {Tab_5}{Right_2}{Alt+s}{Enter};

### Files
#
#Copy Filename = {Alt+f}m{Ctrl+c}{Alt+d}{Right}\{Ctrl+v}
#               {Home}{Shift+End}{Ctrl+c}{Esc};
#Copy Folder Name = {Alt+d}{Ctrl+c}{Esc};
#Copy Leaf Name = {Alt+f}m{Ctrl+c}{Esc};

#Duplicate That = {Ctrl+c}{Left}{Ctrl+vc;
#Rename That = {F2};
#Paste Here = ButtonClick(1,1) {Ctrl+v};
#File properties = ButtonClick(2,1) {Right Click} {up_1} {enter};
#(Show|Edit) Properties = ButtonClick(2,1) {Right Click} {up_1} {enter};
#(Show|Edit) Properties = {Alt+f}r;

#[Toggle] Read Only = {Alt+f}r Wait(2000) {Alt+r}{Enter};
Select address bar = {Alt+d};
Select search box = {Ctrl+e};
Select search box = {Ctrl+f};
New [file] [explorer] window = {Ctrl+n};
Close window = {Ctrl + w};
#Change the size and appearance of file and folder icons.	Ctrl + mouse scroll wheel
#Display all folders above the selected folder.	Ctrl + Shift + E
Display preview panel = {alt+p};
Show Properties = {alt+enter};
Close properties = {esc};
#Previous folder = {alt+arrow};
#View the next folder.	Alt + Right arrow
#View the folder that the folder was in.	Alt + Up arrow
#View the previous folder.	Alt + Left arrow
#View the previous folder.	Backspace
#Display the current selection (if it's collapsed), or select the first subfolder.	Right arrow
#Collapse the current selection (if it's expanded), or select the folder that the folder was in.	Left arrow
#Display the bottom of the active window.	End
goto end = {end};
goto top = {home};
#Display the top of the active window.	Home
#Maximize or minimize the active window.	F11
Show List [icons] view = {Ctrl+Shift+5};
Show Details [icons] view = {Ctrl+Shift+6};
Show Extra Large icons [view] = {Ctrl+Shift+1};
Show Large Icons [view] = {Ctrl+Shift+2};
Show Medium icons [view] = {Ctrl+Shift+3};
Show Small icons [view] = {Ctrl+Shift+4};
#
#Ctrl + Shift + 2 – Large icons
#3Ctrl + Shift + 3 – Medium icons
#Ctrl + Shift + 4 – Small icons
#Ctrl + Shift + 5 – List view
#Ctrl + Shift + 6 – Details view
#Ctrl + Shift + 7 – Tiles
#Ctrl + Shift + 8 – Content