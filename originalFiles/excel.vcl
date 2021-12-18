#include Unimacro.vch;
# Voice commands for excel

#include keys.vch;
#include devedit.vch;
#include msShortcuts.vch;

#cell g35
#already in DragonNaturallySpeaking
#cell <letterkeys> <nn> = "{ctrl+g}$1$2{enter}";

#<border> := ( bottom = o | top = p | left = l | right = r | none = n | all = a | outside = s );
#Border <border> = Keys.SendInput({Alt+h} b $1);

#<fontbigsmall> := ( bigger = fg | smaller = fk );
#make font <fontbigsmall> = Keys.SendInput({Alt+h} $1);

#Set [font] Color = Keys.SendInput({Alt+h}) Keys.SendInput(FC);
#Set [font] Color = Keys.SendInput({Alt+h}) Keys.SendInput(FC);
#Align (Top=p | Center=c | Bottom=b) (Left=l | Center=c | Right=r) = {Alt+a}r{Alt+e}{Alt+ $1 }{Enter}{Alt+o}p{Alt+i}{Alt+g} $2 {Enter}{Enter};
#Set [font] fill color = Keys.SendInput({Alt+h}) Keys.SendInput("h");
#Set [cell] fill color = Keys.SendInput({Alt+h}) Keys.SendInput("h");
#Set [font] text effects = Keys.SendInput({Alt+h}) Keys.SendInput("FT");
#Set [font] case = Keys.SendInput({Alt+h}) Keys.SendInput("7");
#wrap text = Keys.SendInput({Alt+h}) Keys.SendInput("w");
#unwrap text = Keys.SendInput({Alt+h}) Keys.SendInput("w");
#<AlignDir> := ( Left = al |
#				Center = ac |
#				Right = ar |
#				top =  at | 
#				bottom = ab | 
#				Middle = am
#			   );
#Align <AlignDir> = Keys.SendInput({Alt+h}) Keys.SendInput($1);			   

#<incdec> := ( increase = 6 | decrease = 5 );
#<incdec> indent = Keys.SendInput({Alt+h}) Keys.SendInput($1);

#you can auto fill using shortcut keys assuming you have selected the range correctly
#2010 below
auto fill = {Alt+h} fi s {shift+tab} f {enter};