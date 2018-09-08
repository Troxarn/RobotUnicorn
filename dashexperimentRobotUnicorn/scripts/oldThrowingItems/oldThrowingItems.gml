/// @function ThrowingItems(object, stopdelay, throwspeed)
/// @description Spawning and moving a chosen object in a direction.
/// @arg object which object to spawn and throw
/// @arg stopdelay time until alarm0 of the thrown object is called
/// @arg throwspeed the speed in which the item is thrown(with a slight variance of value times 1 to value times 1.2)


var throwthisitem, throwrange, throwspeed;
throwthisitem = argument0;
throwrange = argument1;
throwspeed = argument2;

with instance_create_depth(x+random_range(-5,5), y+random_range(-5,-5), depth, throwthisitem)
{
	alarm_set(0,throwrange)
	direction = random_range(0,360)
	speed = (random_range(throwspeed * 1.2, throwspeed))
	//image_angle = random_range(0,90)
}
