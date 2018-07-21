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
key_button1 = keyboard_check_pressed(ord("I"));
key_button2 = keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0, gp_face4);
key_button3 = keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0, gp_face3);
key_button4 = keyboard_check_pressed(ord("T"));
key_button5 = keyboard_check_pressed(ord("F")) || gamepad_button_check_pressed(0, gp_face1);
key_button6 = false;
key_button7 = false;
key_button8 = mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb);
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
if key_button5 && !instance_exists(oSword)
{
	instance_create_layer(x+ (dcos(point_direction(oPlayer.x,oPlayer.y, mouse_x, mouse_y)) * 15),y- (dsin(point_direction(oPlayer.x,oPlayer.y, mouse_x, mouse_y)) * 15),"Bullets",oSword);
}

//weapon changing
if key_button2
{
	if instance_exists(oWeaponTemplate)
	{
		instance_destroy(oWeaponParent);
		oVariableChecker.active_weapon = instance_create_depth(x,y,depth,oWeaponSine);
	}
	else
	{
		instance_destroy(oWeaponParent);
		oVariableChecker.active_weapon = instance_create_depth(x,y,depth,oWeaponTemplate);
	}
}

if hp <= 0
{
	instance_destroy();
}