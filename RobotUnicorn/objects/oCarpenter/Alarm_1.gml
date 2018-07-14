/// @description Starts a new textbox
// You can write your code in this editor

//called by oAnswerChoice
if myTextBox == noone {
			myTextBox = instance_create_layer(x,y,"Text",oTextBox)
				myTextBox.Creator = self
				myTextBox.Text = myText
				myTextBox.Name = myName
			}