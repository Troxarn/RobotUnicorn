/// @description Variables and textconfig
//NPC variables
myName = "NpcTemplate"
Delay = 2
ResetDelay = 2
WithinReach = false
otherobjectwithinreach = false;
collisionradius = 45; //Change this to adjust the interactionradius
myTextBox = noone
runonce = false;

//NPC movement No touchy
npcdir = 0;
dircooldown = 0;

hsp = 0;
vsp = 0;

stoprandom = false;
diagonalposition[0] = false;
diagonalposition[1] = false;
diagonalposition[2] = false;
diagonalposition[3] = false;

xorigin = x;
yorigin = y;

//Movementoptions
verticalmovement = false; //turns vertical movement on and off
horizontalmovement = false; //turns horizontal movement on and off
npcspeed = 2; //yes, this is speed
range = 225; //in pixels from spawnpoint
maxdircooldown = 35; //Amount of steps before a new direction is randomized

//Textspecific variables
textstate = 0; //Use for quests & events
textprogress = 2; //Check progress of text. Defaultvalue = 2
textprogress10 = 0; //Checks progress of questtext1. Defaultvalue 0.
textprogress20 = 0; //Checks progress of questtext1. Defaultvalue 0.
textprogress30 = 0; //Checks progress of questtext1. Defaultvalue 0.
textshown = false; //Checks if text has been successfully shown

//Answers
askforanswer = false; //no touchy, if this is true the next textbox will spawn one oanswerbox.
answershown = false; //no touchy, this temporarily checks if an answer has been given to this npc.

answeramount = 4; //Change this to change how many answers are shown (2 or 4)
answer[0] = "yes";
answer[1] = "no";
answer[2] = "Mebbe";
answer[3] = "Hollup";

secondansweramount = 2; //Amount of answers in the second round of answering. Same rules apply as for the answeramount variable
secondaryanswer[0] = "hell yeah";
secondaryanswer[1] = "hell no";
secondaryanswer[2] = "";
secondaryanswer[3] = "";

//Latest answer from oAnswerChoice
lastanswer = noone;

//Starting text, add more if needed
myText[0] = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
myText[1] = "Part two of the text."
myText[2] = "This is part three yao!"

answerbox[1] = false;

//second text, add more if needed. If you want to stop dialogue from continuing, just write "" as the string for the first variable (the one with a [0]) below.
secondtext[0] = ""
secondtext[1] = ""
secondtext[2] = ""

answerbox[2] = false;

//third text
thirdtext[0] = ""
thirdtext[1] = ""

answerbox[3] = false;

//fourth text
fourthtext[0] = ""
fourthtext[1] = ""

answerbox[4] = false;

//fifth text
fifthtext[0] = ""
fifthtext[1] = ""

answerbox[5] = false;

//textstate = 1. Part 1. Event or quest text, priority over normal text.
eventtext10[0] = "Congrats You said yes!, eventtext10"
eventtext10[1] = "questtext2"

answerbox[10] = false;

//textstate = 1. Part 2. Event or quest text, priority over normal text.
eventtext11[0] = "eventtext11"
eventtext11[1] = "questtext2"

answerbox[11] = false;

//textstate = 1. Part 3. Event or quest text, priority over normal text.
eventtext12[0] = "eventtext12"
eventtext12[1] = "questtext2"

answerbox[12] = false;

//textstate = 2. Part 1. 2nd eventtext
eventtext20[0] = "questtext20"
eventtext20[1] = "questtext201"

answerbox[20] = false;

//textstate = 2. Part 2. 2nd eventtext
eventtext21[0] = "questtext1"
eventtext21[1] = "questtext2"

answerbox[21] = false;

//textstate = 2. Part 3. 2nd eventtext
eventtext22[0] = "questtext1"
eventtext22[1] = "questtext2"

answerbox[22] = false;

//textstate = 3. Part 1. 3rd eventtext
eventtext30[0] = "questtext30"
eventtext30[1] = "questtext301"

answerbox[30] = false;

//textstate = 3. Part 2. 3rd eventtext
eventtext31[0] = "questtext31"
eventtext31[1] = "questtext311"

answerbox[31] = false;

//textstate = 3. Part 3. 3rd eventtext
eventtext32[0] = "questtext32"
eventtext32[1] = "questtext321"

answerbox[32] = false;

//Answerconsequences
answernumber = -1; //This variable checks how many answers has been given default -1, don't touch.
//First answer consequences
//Consequence variables are contained only in oQuestTracker, Please make sure to comment all variables therein.
//If lastanswer is 0
variabletochange[0] = "testvariable"; //Which variable to change after the answer has been given?
variablevalue[0] = 1; //Which value should the variable change to after the answer has been given?
textnumber[0] = noone; //Which textstate should the NPC be put into after the answer has been given?
//If lastanswer is 1
variabletochange[1] = "testvariable"; //Which variable to change after the answer has been given?
variablevalue[1] = ""; //Which value should the variable change to after the answer has been given?
textnumber[1] = noone; //Which textstate should the NPC be put into after the answer has been given?
//If lastanswer is 2
variabletochange[2] = ""; //Which variable to change after the answer has been given?
variablevalue[2] = ""; //Which value should the variable change to after the answer has been given?
textnumber[2] = noone; //Which textstate should the NPC be put into after the answer has been given?
//If lastanswer is 3
variabletochange[3] = ""; //Which variable to change after the answer has been given?
variablevalue[3] = ""; //Which value should the variable change to after the answer has been given?
textnumber[3] = noone; //Which textstate should the NPC be put into after the answer has been given?


//Second answer consequences
//If lastanswer is 0
secondvariabletochange[0] = ""; //Which variable to change after the answer has been given?
secondvariablevalue[0] = ""; //Which value should the variable change to after the answer has been given?
secondtextnumber[0] = noone; //Which textpage should be shown after the answer has been given?
//If lastanswer is 1
secondvariabletochange[1] = ""; //Which variable to change after the answer has been given?
secondvariablevalue[1] = ""; //Which value should the variable change to after the answer has been given?
secondtextnumber[1] = noone; //Which textpage should be shown after the answer has been given?
//If lastanswer is 2
secondvariabletochange[2] = ""; //Which variable to change after the answer has been given?
secondvariablevalue[2] = ""; //Which value should the variable change to after the answer has been given?
secondtextnumber[2] = noone; //Which textpage should be shown after the answer has been given?
//If lastanswer is 3
secondvariabletochange[3] = ""; //Which variable to change after the answer has been given?
secondvariablevalue[3] = ""; //Which value should the variable change to after the answer has been given?
secondtextnumber[3] = noone; //Which textpage should be shown after the answer has been given?