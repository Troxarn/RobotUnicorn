/// @description Insert description here
// You can write your code in this editor
var i
i = 0
for (i = 0; i < childrenamount; i ++)
{
instance_destroy(children[i]);
}

if spawnondeath == true
{
	instance_create_layer(x, y, layer, spawnobject);
}