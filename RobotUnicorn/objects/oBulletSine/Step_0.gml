/// @description Insert description here
// You can write your code in this editor

livetime += 10;

if bullet_number mod 2 == 1
{
	direction = startdirection + 45 * sin(livetime/room_speed);
}
else
{
	direction = startdirection - 45 * sin(livetime/room_speed);
}


