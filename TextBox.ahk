/* 
Plugin     : TextBox
Purpose    : Multiline Input Box
Version    : 1.0

History:
- 1.0 first version
*/

GetSnippetTextBox:
MakeTextBox:

If (CountString(PluginOptions, "|") > 1)
	lineNum := StrSplit(PluginOptions,"|").2
Else {
    lineNum := 5
}

If (CountString(PluginOptions, "|") = 2)
	widthNum := StrSplit(PluginOptions,"|").3
Else {
    widthNum := 300
}

Gui, 10:Destroy
Gui, 10:+Owner +AlwaysOnTop
Gui, 10:Add, Text, , % StrSplit(PluginOptions,"|").1
Gui, 10:Add, Edit, vMyTextBox r%lineNum% w%widthNum%
Gui, 10:Add, Button, default gTextBoxOK, OK
Gui, 10:Add, Button, x+10 gTextBoxCancel, Cancel
Gui, 10:Show, , TextBox
		Loop
			{
			 If (MadeChoice = 1) or (InStr(Clip, "[[TextBox") = 0)
				{
				 MadeChoice = 0
				 Break
				}
			 Sleep, 20
			}
Return

TextBoxOK: ; selected via Enter
Gui, 10:Submit
Gui, 10:Destroy
MadeChoice=1


StringReplace, clip, clip, %PluginText%, %MyTextBox%
    PluginText:=""
    PluginOptions:=""
    ChoiceQuestion:=""
    PluginsFilterText:=""
    PluginOptionsResults:=""
Return

TextBoxCancel:
MadeChoice = 0
Sleep 50
Gui, 10:Destroy
clip:=""
CancelPlugin:=1
Return
