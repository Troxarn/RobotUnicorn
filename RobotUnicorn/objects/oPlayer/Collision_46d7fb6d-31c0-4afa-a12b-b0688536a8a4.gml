/// @description Insert description here
// You can write your code in this editor

if dashing == false && variable_instance_exists(other,"damage")
{
	hp -= other.damage;

	with other
	{
		instance_destroy();
	}
}