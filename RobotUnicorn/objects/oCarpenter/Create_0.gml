/// @description Variables and textconfig
//NPC variables
myName = "Dirk"
Delay = 2
ResetDelay = 2
WithinReach = false
otherobjectwithinreach = false;
collisionradius = 45; //Change this to adjust the interactionradius
myTextBox = noone
runonce[0] = false;
runonce[1] = false;

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

answeramount = 2; //Change this to change how many answers are shown (2 or 4)
answer[0] = "Yes!";
answer[1] = "No!";
answer[2] = "";
answer[3] = "";

secondansweramount = 2; //Amount of answers in the second round of answering. Same rules apply as for the answeramount variable
secondaryanswer[0] = "hell yeah";
secondaryanswer[1] = "hell no";
secondaryanswer[2] = "";
secondaryanswer[3] = "";

//Latest answer from oAnswerChoice
lastanswer = noone;

//Starting text, add more if needed
myText[0] = "Hello tharr, friend! How you's doin'?"
myText[1] = ""
myText[2] = ""

answerbox[1] = false;

//second text, add more if needed. If you want to stop dialogue from continuing, just write "" as the string for the first variable (the one with a [0]) below.
secondtext[0] = "So, you have'nt seen my dog up in this here forest have'ya?"
secondtext[1] = ""
secondtext[2] = ""

answerbox[2] = true;

//third text
thirdtext[0] = "Bummer man, well if you see her you're doing me a solid if you bring her over. Its dinner time and all soon you know?"
thirdtext[1] = "You just come talk to me when you find my dog will'ya? I'm not leaving here until she gets back"

answerbox[3] = false;

//fourth text
fourthtext[0] = "You just come talk to me when you find my dog will'ya? I'm not leaving here until she gets back"
fourthtext[1] = ""

answerbox[4] = false;

//fifth text
fifthtext[0] = ""
fifthtext[1] = ""

answerbox[5] = false;

//textstate = 1. Part 1. Event or quest text, priority over normal text.
eventtext10[0] = "Well great! Its dinner time soon so you'd really making me a solid if you brought her over for me."
eventtext10[1] = "You just come talk to me when you find my dog will'ya? I'm not leaving here until she gets back"

answerbox[10] = false;

//textstate = 1. Part 2. Event or quest text, priority over normal text.
eventtext11[0] = "You just come talk to me when you find my dog will'ya? I'm not leaving here until she gets back"
eventtext11[1] = ""

answerbox[11] = false;

//textstate = 1. Part 3. Event or quest text, priority over normal text.
eventtext12[0] = "You just come talk to me when you find my dog will'ya? I'm not leaving here until she gets back"
eventtext12[1] = ""

answerbox[12] = false;

//textstate = 2. Part 1. 2nd eventtext
eventtext20[0] = "Oh you found my dog, man. Thats great, thanks a bunch! She runs away sometimes, chasin' chickens and whatnot. But shes good company out here where not many people hang out. Have'nt seen you around before, are from away lands or somethin'?"
eventtext20[1] = ""

answerbox[20] = false;

//textstate = 2. Part 2. 2nd eventtext
eventtext21[0] = "Well, thanks again. I won't forget you getting mah dog back!"
eventtext21[1] = ""

answerbox[21] = false;

//textstate = 2. Part 3. 2nd eventtext
eventtext22[0] = "Well, thanks again. I won't forget you getting mah dog back!"
eventtext22[1] = ""

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
variabletochange[0] = ""; //Which variable to change after the answer has been given?
variablevalue[0] = ""; //Which value should the variable change to after the answer has been given?
textnumber[0] = 1; //Which textstate should the NPC be put into after the answer has been given?
//If lastanswer is 1
variabletochange[1] = ""; //Which variable to change after the answer has been given?
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