include Unimacro.vch;
# Voice commands for cmd
test command = "vocola cmd";
copy that = {enter};
paste that = ButtonClick(2,1);
n s lookup = 'nslookup ';
NS lookup = 'nslookup ';

i p config = 'ipconfig ' {enter};
IP config = 'ipconfig ' {enter};
IP config slash all = 'ipconfig /all' {enter};
IP config slash release = 'ipconfig /release' {enter};
IP config slash renew = 'ipconfig /renew' {enter};
trace route = "tracert ";
trace route minus D = "tracert -d ";

s s h = "kitty -ssh ";
SSH = "kitty -ssh ";
ping minus t = 'ping -t ';
ping = 'ping ';
DAR = 'dir'{enter};
dir = 'dir'{enter};

CD = "cd ";
back slash system 32 = '\System32';
back slash windows = '\Windows';

F CIV = "fciv ";

net view = "net view ";