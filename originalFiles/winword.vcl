include Unimacro.vch;
# Voice commands for WINWORD

include keys.vch;
include devedit.vch;
#include msShortcuts.vch;
#<n> := 0..100;

#<start_end> := (Start={Home} | End={End});
#<direction>  := Left | Right | Up | Down;
#<left_right> := Left | Right;

#Line <start_end>     = Keys.SendInput($1);
#(Outline=o | Normal=n | Print Layout=p | Web Layout=w) View = {Alt+v} $1;

# ---------------------------------------------------------------------------
# Manipulating Outlines

#New Item         = {Ctrl+Down}{Left_2}{End}{Enter};
#New Item Promote = {Ctrl+Down}{Left_2}{End}{Enter}{Alt+Shift+Left};
#New Item Demote  = {Ctrl+Down}{Left_2}{End}{Enter}{Alt+Shift+Right};

#Promote  That = {Alt+Shift+Left};
#Demote   That = {Alt+Shift+Right};
#Expand   That = {Alt+Shift+Plus};
#Collapse That = {Alt+Shift+Minus};

#Item (Up | Down)       = {Alt+Shift+ $1};
#Item (Up | Down) 1..20 = {Alt+Shift+ $1 " " $2 };

# ---------------------------------------------------------------------------
# Styles
the earth is round = "here";
crazy Style ( Normal
		| Heading 1
		| Heading 2
		| Heading 3
		| code
		| None = "Default Paragraph Font"
      ) = Keys.SendInput({Ctrl+Shift+s} $1 {Enter});

Heading 1..9 = SendSystemKeys({Ctrl+Shift+s}) "Heading " $1 {Enter}{Down};

Edit Style = {Alt+o} Wait(100) s{Alt+m}{Alt+o};

toggle bullet on = Keys.SendInput({Ctrl+Shift+l});
toggle bullet off = Keys.SendInput({Ctrl+Shift+n});
bullet that = Keys.SendInput({Ctrl+Shift+l});
unbullet that = Keys.SendInput({Alt+h} u {down_1} {enter});
align left = Keys.SendInput({Ctrl+l});
Align center = Keys.SendInput({Ctrl+e});
align right = Keys.SendInput({Ctrl+r});
justify = Keys.SendInput({Ctrl+j});

# ---------------------------------------------------------------------------
# Tables

Insert (Row Below=b|Row Above=a|Column Left=l|Column Right=r) = {Alt+a}i $1;

Merge Cells = {Alt+a}m;
Merge Row = {Alt+Home}{Shift+Alt+End}{Alt+a}m;

Align (Top=p | Center=c | Bottom=b) (Left=l | Center=c | Right=r) =
    {Alt+a}r{Alt+e}{Alt+ $1 }{Enter}{Alt+o}p{Alt+i}{Alt+g} $2 {Enter}{Enter};

# ---------------------------------------------------------------------------
# Miscellaneous

Find That = {Ctrl+c}{Ctrl+f}{Ctrl+v}{Enter}{Esc};
Replace Text = {Alt+e}e;

Keep with Next = {Alt+o}p{Alt+p}{Alt+x}{Enter};

Kill Here                  = {Shift+End}{Shift+Left}{Del};
Kill Back Here             = {Shift+Home}{Shift+Right}{Del};

#Rosy Find = {Ctrl+f}{Enter}{Esc};
#Rosy Do = {Home}{Shift+Down_2}{Del}{Ctrl+S}CodeHeading{Enter}{Down}{Del_13};#


#Accept or Reject Changes:
#  Accept = {Alt+a};
#  Reject = {Alt+r};
#  Find = {Alt+f};

#Find and Replace:
#  Replace = {Alt+r};
#  Replace All = {Alt+a};
#  Find [Next] = {Alt+f};
  
Heading <n> = Keys.SendInput({Ctrl+Alt+$1});

<border> := ( bottom = b | top = p | left = l | right = r | none = n | all = a | outside = s | inside = i );
Border <border> = Keys.SendInput({Alt+h} b $1);
Style Heading <n> = Keys.SendInput({Ctrl+Alt+$1});
Style Normal = Keys.SendInput({Ctrl+Shift+S} Normal {Enter});
<StyleType> := ( Normal | "Heading 1" | "Heading 2" | "Heading 3" );
Modify Style <StyleType> = Keys.SendInput({Ctrl+Shift+S} $1	{Tab_2} {Enter});

# Common markup
Format Paragraph = {Alt+o}p;
set after = {Alt+f};
set before = {Alt+b};
Keep with Next = {Alt+h}pg{Alt+p}{Alt+x}{Enter};#{Alt+o}p;
Show Breaks = {Alt+o}p;
(Page=p | Column=c) Break = {Alt+i}b $1 {Enter};

Make Font bigger = Keys.SendInput({Ctrl+>});
Set [font] Color = Keys.SendInput({Alt+h}) Keys.SendInput(FC);
Set [font] highlight = Keys.SendInput({Alt+h}) Keys.SendInput("I");
Set [font] text effects = Keys.SendInput({Alt+h}) Keys.SendInput("FT");
Set [font] case = Keys.SendInput({Alt+h}) Keys.SendInput("7");

insert page break = Keys.SendInput({Ctrl+Enter});
<InsertWhat> := ( table = t i | hyperlink = i );
insert <InsertWhat> = Keys.SendInput({Alt+n} $1);

<PageLayoutCfg> := ( Margins = M | 
					Orientation Portrait = "O {enter}"	|
					Page Size = "SZ" | 
					columns = "J"
					);
set <PageLayoutCfg> = SendSystemKeys({Alt+p} $1);
set orientation landscape = Keys.SendInput({Alt+p}) Keys.SendInput("O") Keys.SendInput({Down_1}) Keys.SendInput({enter});
#<n> point <n> := "$1.$2";
set indent left point <n> = Keys.SendInput({Alt+p} "IL.$1" {Enter});
set indent left <n> point <n> = Keys.SendInput({Alt+p} "IL $1.$2" {Enter});
set indent right point <n> = Keys.SendInput({Alt+p} "IR.$1" {Enter});
set indent right <n> point <n> = Keys.SendInput({Alt+p} "IR $1.$2" {Enter});
set spacing before point <n> = Keys.SendInput({Alt+p} "SB.$1" {Enter});
set spacing before <n> point <n> = Keys.SendInput({Alt+p} "SB $1.$2" {Enter});
set spacing after point <n> = Keys.SendInput({Alt+p} "SA.$1" {Enter});
set spacing after <n> point <n> = Keys.SendInput({Alt+p} "SA $1.$2" {Enter});
insert table of contents = Keys.SendInput({Alt+S} T I {alt+m} {Alt+m} {alt+o} P {alt+f} 0 {enter} {enter} {tab} {tab} {down_1} {Alt+m} {alt+o} P {alt+f} 0 {enter} {enter} {tab} {tab} {down_1} {Alt+m} {alt+o} P {alt+f} 0 {enter} {enter} {enter} {enter});
Set Zoom to <n> hundred and <n> percent = Keys.SendInput({Alt+w} q {Alt+e} $1$2 {enter});
Set Zoom to <n> hundred percent = Keys.SendInput({Alt+w} q {Alt+e} "$1"00 {enter});
Set Zoom to <n> percent = Keys.SendInput({Alt+w} q {Alt+e} $1 {enter});

#<tableThing> := (Table=t | Row=r | Column=c | Cell=e);