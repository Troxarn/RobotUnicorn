//Change sprite after racing 0 HP
if hp <= 0
{
	image_index = 1
	DelayExplosion--
}

//Spawn one explosion when 0 hp
if DelayExplosion >= 5 && hp <= 0
{
	instance_create_depth(x,y,50,oExplosion)
}

//When player is in play area start spawning enemies
if oTrigger.Colliding = true
{

	DelaySpawner--
}

if DelaySpawner <= 0 && hp > 1
{
	instance_create_depth(x+40,y,0,oEnemy2)
	DelaySpawner = 250
}



//Change color depending on hp
if hp == 300
{
	image_blend = make_color_hsv(255,50,255)

}

if hp == 200
{
	image_blend = make_color_hsv(255,100,255)

}

if hp == 200
{
	image_blend = make_color_hsv(255,150,255)

}

if hp == 100
{
	image_blend = make_color_hsv(255,200,255)

}


