/// @description Insert description here
// You can write your code in this editor

Creator = noone;

timetolive = 30;

//enemylist checking to only damage a specific enemy once
my_list = ds_list_create();
enemylistpos = noone;
var i;
for (i = 0; i < instance_number(oEnemyParent); i ++)
   {
   ds_list_add(my_list, (instance_find(oEnemyParent, i)))
   }

//Instant kill list (add exact object names (caps lock sensitive) in quotations to the 
//list to make them die instantly when hit by this effect)

instant_kill[0] = ""

