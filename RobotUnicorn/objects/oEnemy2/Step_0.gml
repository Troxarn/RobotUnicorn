/// @description Insert description here
// You can write your code in this editor

//LoS delay
delaytime--;
if delaytime <= 0
{
	delaytime = maxdelaytime;
}


//Updates targetcoordinates (to playerposition)
xorigin = oPlayer.x;
yorigin = oPlayer.y;

//He ded
if hp <= 0
{
	instance_destroy();
}


if firingstance == true && stop_while_firing == true
{
	stop_time --;
	if stop_time <= 0
	{
		firingstance = false;
		stop_time = max_stop_time;
		dircooldown = 0;
	}
}

if firingstance = true
{
	npcdir = 8; // stops npc movement during firingstance
}
//Angle toward player
image_angle = point_direction(x,y,oPlayer.x,oPlayer.y) - 90;

//movement
NpcMovement();
TileEnemyCollision();

//shooting
if shooting = true && runonce = false
{
	with (instance_create_layer(x,y,"Instances",oWeaponEnemy1))
	{
		creator = other.id;
		other.children = id;
		maxfiringdelay = other.maxshotdelay;
		stop_trigger = other.prepare_firing_stance;
		maxbullets = other.maxbullets;
		bulletspeed = other.bulletspeed;
		spread = other.spread;
		shotgunspread = other.shotgunspread;
		maxrecoil = other.maxrecoil;
	}
	runonce = true;
}




