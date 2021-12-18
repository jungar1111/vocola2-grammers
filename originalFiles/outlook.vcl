include Unimacro.vch;
# Voice commands for OUTLOOK

#switchToFolder(folder) := {Ctrl+y}{PgUp_8}{Left}  # close "Archive Folders"
#						  $folder {Enter};
#                          #Inbox{Right}           # open "Inbox"
#                          #{Up_40} $folder {Enter};
#<folder> := Inbox | Drafts | Sent | Calendar | Contacts | Tasks;
#
#Folder <folder> = switchToFolder($1);
#Go to <folder> = switchToFolder($1);
#Move To <folder> = {Ctrl+x} switchToFolder($1) {Ctrl+v};
<switchto> := ( email = 1 | Mail = 1 | Calendar = 2 | Contacts = 3 | Tasks = 4 | Notes = 5 | Folder List = 6 | shortcuts = 7 );
go to <switchto> = {Ctrl+$1};

move to folder = {Alt+h} m v;

include utilities.vch;
New Message = {Ctrl+n};
  New Message to Contact = {Alt+a}m;
  Reply = {Ctrl+r};
  Reply All = {Ctrl+Shift+r};
  Reply to (Message={Ctrl+r} | All={Ctrl+Shift+r}) = $1;
  Forward Message = {Ctrl+f};

Outlook:
  Flag That = {Ctrl+G}{Enter}{Ctrl+q};
  Unflag That = {Ctrl+G}{Alt+c};
  Get Mail = {Alt+t}e{Enter};  
  Sort by Date   = touchNearEdge(ne,-3,8) ButtonClick();
  Sort by Sender = touchNearEdge(nw,23,8);
  Final Message = {End};
  Search Messages = {Ctrl+Shift+f};
  Mark as unread = {Alt+h}w;
  Mark unread = {Alt+h}w;
  Mark as read = {Alt+h}w;
  Mark read = {Alt+h}w;
  Mark All Read = {Alt+e}e;
  Kill Line = {Del};

Message:
  Kill Message = {Alt+F4} n;
  Reply = {Ctrl+r};
  Reply All = {Ctrl+Shift+r};
  Mark unread = {Alt+h}u;
  Mark read = {Alt+h}u;
  set color black = {Alt+h} fc {Down} {Left_4} {Enter};
Message (Plain Text):
  Reply Here = {Home}{Shift+End}{Del}{Enter_3}{Left_2};
  Send That = {Alt+f}e{Enter};
Message (HTML):
  Plain Text = {Alt+o}ty;
  Fix Return = {End}{Del}{Shift+Enter}{Right};
Message (Rich Text):
  Plain Text = {Alt+o}ty;
Select Names:
  (To=o | See See=c | Be See See=b) That = {Alt+$1}{Down};

Personal Folders:
  Calendar = {Alt+v}gc;
Calendar:
  View (Month=m | Work Week=r) = {Alt+$1};
Overdue:
  Dismiss = {Alt+d};

Contacts:
  Edit That = {Enter};
  Print Preview = {Alt+f}v;
  (Design|Edit) View = {Alt+v}vc;
  Edit   Email Address = {Ctrl+o}{Tab_17};
  Update Email Address = {Ctrl+o}{Tab_17}{Ctrl+v}{Alt+s};
  Delete Email Address = {Ctrl+o}{Tab_17}{Del}{Alt+s};
  Copy   Email Address = {Ctrl+o}{Tab_17}{Ctrl+c}{Esc};
  New Contact = {Ctrl+n} HeardWord(Category, Main) {Tab_3};

- Contact:
  (Use That | Save and Close) = {Alt+s};
  # Jump to input field (numbered in reverse order from big text box)
  #field(n) := touchNearEdge(sw,5,-5) {Shift+Tab_$n};
  Field ( Categories=24 | File As=18 | Business=16 | Home=14 | Mobile=10
        | Address=8 | Email=4 ) = touchNearEdge(sw,5,-5) {Shift+Tab_$1};
  Home Address = HeardWord(Field, Address)
                 "{Tab} {Down_2}{Enter}{Tab} {Shift+Tab_2}";
  Swap E-mail 2..3 = "{Shift+Tab} {Down $1}{Enter}{Tab}{Ctrl+c}"
                    "{Shift+Tab} {Down}{Enter}{Tab}{Left}{Ctrl+v}{Backspace 2}"
                    {Shift+Right}{Ctrl+x}
                    "{Shift+Tab} {Down $1}{Enter}{Tab}{Ctrl+v}"
                    "{Shift+Tab} {Down}{Enter}{Tab}";
  Use E-mail 2..3 = "{Shift+Tab} {Down $1}{Enter}{Tab}{Ctrl+x}"
                    "{Shift+Tab} {Down}{Enter}{Tab}{Ctrl+v}";

Print Preview:
  Close [That] = {Alt+c};
