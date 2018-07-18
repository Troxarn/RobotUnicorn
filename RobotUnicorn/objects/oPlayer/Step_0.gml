/// @description Insert description here
// You can write your code in this editor

//Movement
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
key_button2 = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1);
key_button3 = keyboard_check_pressed(ord("R"));
key_button4 = keyboard_check_pressed(ord("T")) || gamepad_button_check_pressed(0, gp_face3);
key_button5 = keyboard_check_pressed(ord("F"));
key_button6 = false;
key_button7 = false;
key_button8 = false;
pausebutton = keyboard_check_pressed(ord("P")) || gamepad_button_check_pressed(0, gp_start);

//Calculate movement
movex = key_right - key_left;
movey = key_down - key_up;
hsp = movex * walksp;
vsp = movey * walksp;

//Final movement
x = x + hsp;
y = y + vsp;

//Close game
if keyboard_check_pressed(vk_escape) 
{
	game_end();
}

//Melee
if key_button2 && !instance_exists(oSword)
{
	
}

//weapon changing
/*if key_button2
{
	if instance_exists(oWeapon1)
	{
		instance_destroy(oWeaponParent);
		instance_create_depth(x,y,depth,oWeaponShotty);
	}
	else
	{
		instance_destroy(oWeaponParent);
		instance_create_depth(x,y,depth,oWeaponShotty);
	}
}*/

if hp <= 0
{
	instance_destroy();
}