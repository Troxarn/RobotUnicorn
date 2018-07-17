/// @description Insert description here
// You can write your code in this editor
with other
{
	if variable_instance_exists(id,"hp")
	{
		hp -= other.damage
	}
	else
	{
		instance_destroy();
	}
}
