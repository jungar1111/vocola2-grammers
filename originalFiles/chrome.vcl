include Unimacro.vch;
# Voice commands for chrome

Address Bar = {Ctrl+l};

<url> := ( Vocola       = vocola.net
         | Amazon       = www.Amazon.com
         | Weather Map  = www.wunderground.com/US/Region/US/2xFronts.html
         | Maps         = maps.google.com
         | Kayak        = www.kayak.com
		 | jungarnet	= jungar.net
		 | jungar.net	= jungar.net
		 | work email	= outlook.office.com
		 | yahoo email = mail.yahoo.com
		 | jungar email = webmail.1and1.com
		 | monger email  = mail.monger.net
		 | 1 and 1		= 1and1.com
		 | partners	healthcare	= www.partners.org
		 | Audible = audible.com
		 | github = github.com
		 | Cisco = cisco.com
		 | Google maps = maps.google.com
		 | last pass = lastpass.com
		 | zip car solar winds = ussomsolarp01.primary.zipcar.com/Orion/Login.aspx
		 | the car saloons = ussomsolarp01.primary.zipcar.com/Orion/Login.aspx
		 | the car Solomons = ussomsolarp01.primary.zipcar.com/Orion/Login.aspx
		 | that car Solomons = ussomsolarp01.primary.zipcar.com/Orion/Login.aspx
		 | linked in = linkedin.com
		 | fidelity = fidelity.com
		 | TD ameritrade = tdameritrade.com
		 | Amazon = amazon.com
);

open <url> = {Ctrl+l} http://$1 {Enter};
open HTTPS <url> = {Ctrl+l} https:// $1 {Enter};
open f t p <url> = {Ctrl+l} ftp:// $1 {Enter};

Web Search For <_anything> = {Ctrl+k} $1 {Enter};

New Window = {Ctrl+n};
 + 
#Bigger 1 (font size)
#Smaller 3
(Bigger=+ | Smaller=-) [Text] 1..4 = {Ctrl+$1_$2};

refresh = {Ctrl+r};
### Tabs

New Tab = {Ctrl+t};
Close (Tab|That) = {Ctrl+w};
Next Tab = {Ctrl+Tab};
Previous Tab = {Ctrl+Shift+Tab};
Move Tab Right = {Ctrl+Shift+PgDn};
Move Tab Left = {Ctrl+Shift+PgUp};

Outpatient :
