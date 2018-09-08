/// @description Collisioncheck with player
// You can write your code in this editor

if collision_circle(x, y, collisionradius, oPickupableItemParent, false, true)
{
	otherobjectwithinreach = true;
}
else
{
	otherobjectwithinreach = false;
}

