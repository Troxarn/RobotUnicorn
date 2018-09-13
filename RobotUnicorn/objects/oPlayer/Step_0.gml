/// @description Insert description here
// You can write your code in this editor

//Keyboard Controls
//Movement
key_left =  ord("A");
key_right = ord("D");
key_up = ord("W");
key_down = ord("S");

//Selections
key_select_left = vk_left;
key_select_right = vk_right;
key_select_up = vk_up;
key_select_down = vk_down;


//Buttons
key_button1 = vk_space;
key_button2 = ord("E");
key_button3 = ord("R");
key_button4 = ord("T");
key_button5 = ord("F");
key_button6 = false;
key_button7 = mb_right;
key_button8 = mb_left;
pausebutton = ord("P");


//Gamepad Controls
//Movement
gamepad_key_left =  gamepad_axis_value(0,gp_axislh) < 0;
gamepad_key_right = gamepad_axis_value(0,gp_axislh) > 0;
gamepad_key_up = gamepad_axis_value(0,gp_axislv) < 0;
gamepad_key_down = gamepad_axis_value(0,gp_axislv) > 0;

//Selections
gamepad_key_select_left = gamepad_button_check_pressed(0, gp_padl);
gamepad_key_select_right = gamepad_button_check_pressed(0, gp_padr);
gamepad_key_select_up = gamepad_button_check_pressed(0, gp_padu);
gamepad_key_select_down = gamepad_button_check_pressed(0, gp_padd);

//Buttons
// gamepad_button_check_pressed(0, gp_face4) 
gamepad_key_button1 = gp_face1;
gamepad_key_button2 = gp_face4;
gamepad_key_button3 = gp_face3;
gamepad_key_button4 = noone;
gamepad_key_button5 = gp_face2;
gamepad_key_button6 = false;
gamepad_key_button7 = gp_shoulderl;
gamepad_key_button8 = gp_shoulderrb;
gamepad_pausebutton = gamepad_button_check_pressed(0, gp_start);



//Calculate movement
if gamepad_is_connected(0)
{
movex = gamepad_key_right - gamepad_key_left;
movey = gamepad_key_down - gamepad_key_up;
}
else
{
movex = keyboard_check(key_right) - keyboard_check(key_left);
movey = keyboard_check(key_down) - keyboard_check(key_up);
}

//Jumping
if keyboard_check_pressed(key_button1) && jumpcd <= 0 || gamepad_button_check_pressed(0,gamepad_key_button1) && jumpcd <= 0
{
	jumpduration = maxjumpduration;
	jumpcd = maxjumpcd
	jumpstart = true;
}

if !(jumpduration <= 0)
{
	jumpduration --;
}

if jumpduration <= 0 && !(jumpcd  <= 0)
{
	jumpcd --
}

if keyboard_check_pressed(key_button7) && dashcd <= 0 && allowdash == true || gamepad_button_check_pressed(0,gamepad_key_button7) && dashcd <= 0 && allowdash == true
{
	dashing = true;
	dashcd = maxdashcd;
}

if dashing == true
{

}
if acceleration = true
{
//Robins accel/decel kod
	PlayerAccDec();
}
else
{
	hsp = movex * walksp;
	vsp = movey * walksp;
}

//Final movement
x = x + hsp;
y = y + vsp;


TilePlayerCollision();

//Close game
if keyboard_check_pressed(vk_escape) 
{
	game_end();
}

//Melee
if keyboard_check_pressed(key_button5) && !instance_exists(meleeitem)
{
	instance_create_layer(x+ (dcos(point_direction(oPlayer.x,oPlayer.y, mouse_x, mouse_y)) * 15),y- (dsin(point_direction(oPlayer.x,oPlayer.y, mouse_x, mouse_y)) * 15),"Bullets",meleeitem);
}
else if gamepad_button_check_pressed(0, oPlayer.gamepad_key_button5) && !instance_exists(meleeitem)
{
	instance_create_layer(x+dcos(oWeaponParent.image_angle)*(sprite_width/3),y-dsin(oWeaponParent.image_angle)*(sprite_width/3),"Instances",oPlayer.meleeitem);
}

//weapon changing
if keyboard_check_pressed(key_button2) ||  gamepad_button_check_pressed(0, oPlayer.gamepad_key_button2)
{
	if instance_exists(oVariableChecker.weapon[1])
	{
		instance_destroy(oWeaponParent);
		with instance_create_depth(x,y,depth,oVariableChecker.weapon[2])
		{
			oVariableChecker.active_weapon = id;
			if !(oVariableChecker.weapon2ammo == noone)
			{
				ammo = oVariableChecker.weapon2ammo;
			}
		}
	}
	else
	{
		instance_destroy(oWeaponParent);
		with instance_create_depth(x,y,depth,oVariableChecker.weapon[1])
		{
			oVariableChecker.active_weapon = id;
			if !(oVariableChecker.weapon1ammo == noone)
			{
				ammo = oVariableChecker.weapon1ammo;
			}
		}
	}
}

//Storing safe positioncoordinates
if dashing == false
{
	safetytimer --
	if safetytimer <= 0 && !collision_circle(x,y,32,oHole,false,true)
	{
		safetyx = x;
		safetyy = y;
		safetytimer = safetytimermax;
	}
}


if hp <= 0
{
	instance_destroy();
}

