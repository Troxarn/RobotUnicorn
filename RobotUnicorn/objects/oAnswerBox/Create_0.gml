/// @description Insert description here
// You can write your code in this editor

runonce = false;
creator = noone;

startingpointx = noone;
startingpointy = noone;

//How many answers are available?
answeramount = noone;
answer[0] = "";
answer[1] = "";
answer[2] = "";
answer[3] = "";


//Draw stuff
ypadding = 10; //vertical padding between answerchoice
padding = 8;
yscaling = 1;
xscaling = 1;
ypixels = 0;

guix = -300;
guiy =  -300;
waittime = 3;
/*
//Creating oAnswerchoice objects depending on variable "answer"
var i
for (i = 0; i < answeramount; i++)
{
	with instance_create_depth(x, y, depth - 1, oAnswerChoice)
	{
		answerid = i;
		creator = other.creator;
		answerchoice = other.answer[i];
		other.ypixels += sprite_height;
	}
}

//Creating oAnswerselector
instance_create_depth(x + padding, y + padding, depth -2, oAnswerSelector);

//Close inventory if open
if instance_exists(oInventoryBase)
{
	instance_destroy(oInventoryBase);
}
