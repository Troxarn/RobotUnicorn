/// @function ThrowingItems(object, stopdelay, throwspeed)
/// @description Spawning and moving a chosen object in a direction.
/// @arg object which object to spawn and throw
/// @arg stopdelay frames until alarm0 of the thrown object is called
/// @arg throwspeed the speed in which the item is thrown(with a slight variance of value times 1 to value times 1.2)
/// @arg itemamount Amount of items created

var throwthisitem, stopdelay, throwspeed, itemamount, i;
throwthisitem = argument0;
stopdelay = argument1;
throwspeed = argument2;
itemamount = argument3;

for (i = 0; i < itemamount; i ++)
{
	with instance_create_depth(x+random_range(-5,5), y+random_range(-5,-5), depth, throwthisitem)
	{
		alarm_set(0,(stopdelay*room_speed))
		direction = random_range(0,360)
		speed = (random_range(throwspeed * 1.2, throwspeed))
		//image_angle = random_range(0,90)
	}
}