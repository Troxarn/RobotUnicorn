/// @description Insert description here
// You can write your code in this editor
hp = 7;
damage = 1

debris_time_to_live = 10;
debris_speed = 7;
debris_amount = 6;

//Movement variables
npcdir = 0;
dircooldown = noone;
maxdircooldown = room_speed;
npcspeed = 1;
hsp = 0;
vsp = 0;
range = 100;
horizontalmovement = true;
verticalmovement = true;
stoprandom = true;
xorigin = oPlayer.x;
yorigin = oPlayer.y;


//Shooting
shooting = true;
bullet = "oEnemyBullet1"
bulletspeed = 5; //speed of the bullet
maxbullets = 1; //Bullets per shot fired.
spread = 5; //bulletspread, positive and negative. Actual spread is var spread * 2 in pixels.
shotgunspread = 15; //decides the discrepancy between each bullet if maxbullets are more than 1. Spread is calculated for each bullet after shotgunspread is applied.
maxrecoil = 20; //steps for recoil

maxshotdelay = 2 * room_speed; //Delay between each shot
prepare_firing_stance = 1/4 * maxshotdelay; //Coefficient to calculate when to stop moving before shooting, calculated in weapon by this formula: firingdelay <= (prepare_firing_stance)

runonce = false; //no touchy

stop_while_firing = true; //change ok, true = stops movement for a few steps before and after firing. False = keeps moving. Configure amount of steps in prepare_firing_stance & max_stop_time.
max_stop_time = prepare_firing_stance + 0; //steps to stand still counting from when firingdelay is enabled (firingdelay == true). The number added is the amount of steps after actual firing.
stop_time = max_stop_time; //no touchy
firingstance = false; //stops movement while firing no touchy


diagonalposition[0] = false;
diagonalposition[1] = false;
diagonalposition[2] = false;
diagonalposition[3] = false;

//Tilemap & collisions
tilemap = layer_tilemap_get_id("CollisionTiles");
bbox_side = 0

//Line of sight
loscheck = false;
maxdelaytime = room_speed*0.7;
delaytime = maxdelaytime;

lvaluex = 0;
lvaluey = 0;
amt = (100/112)/100;