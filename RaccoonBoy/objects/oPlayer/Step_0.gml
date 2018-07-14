/// @description See comments
// You can write your code in this editor

//Get playerinput
//Directions
//OBS Ändra kontroller i oTextbox, oPause också!!!!!!
//if !instance_exists(oTextBox)

key_left =  keyboard_check(ord("A")) || gamepad_axis_value(0,gp_axislh) < 0;
key_right = keyboard_check(ord("D")) || gamepad_axis_value(0,gp_axislh) > 0;
key_up = keyboard_check(ord("W")) || gamepad_axis_value(0,gp_axislv) < 0;
key_down = keyboard_check(ord("S")) || gamepad_axis_value(0,gp_axislv) > 0;

//Selections
key_select_left = keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl);
key_select_right = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr);
key_select_up = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu);
key_select_down = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd);


//Buttons
// keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
key_button1 = keyboard_check_pressed(ord("I")) || gamepad_button_check_pressed(0, gp_face4);

if inputdelay = 0
{
key_button2 = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1);
}
else
{
	key_button2 = noone;
}

if key_button2 
{
	inputdelay = 8;
}

if inputdelay != 0
{
	inputdelay --;
}


key_button3 = keyboard_check_pressed(ord("R"));
key_button4 = keyboard_check_pressed(ord("T")) || gamepad_button_check_pressed(0, gp_face3);
key_button5 = keyboard_check_pressed(ord("F"));
key_button6 = false;
key_button7 = false;
key_button8 = false;
pausebutton = keyboard_check_pressed(ord("P")) || gamepad_button_check_pressed(0, gp_start);





if keyboard_check_pressed(vk_escape) {
	game_end()
}


//Detta hindrar kod från att köras och stoppar spelarmodellen om pausestate inte är 1
if oPause.pausestate != 1
{
	image_index = 0;
}
else
{


if key_button4 && !instance_exists(oBugnet) && oQuestTracker.bugnet == true
{
	instance_create_layer(x, y, playerlayerID, oBugnet)
}

//Inventory
if key_button1 = true
{
	if !instance_exists(oInventoryParent)
	{
		instance_create_layer(oPlayer.x,oPlayer.y, playerlayerID, oInventoryParent);
	}
	else
	{
		instance_destroy(oInventoryParent)
	}
}


//Restart position
if key_button3
{
	x = positionsavex;
	y = positionsavey;
}


//Calculate movement
movex = key_right - key_left;
movey = key_down - key_up;
hsp = movex * walksp;
vsp = movey * walksp;



if allowacceleration = true
{
	//MovementDeceleration
	script_execute(MovementDecel,0);

	//Movementacceleration
	script_execute(MovementAccel,0);
}

//Roadblock 
if instance_exists(oRoadBlock)
{
script_execute(Roadblockcollision,0);
}

//New Collision with tiles!
script_execute(TilePlayerCollision, 0)

//Call Destroy event
if hp <= 0
{
	instance_destroy();
}

//Final movement
x = x + hsp;
y = y + vsp;


}