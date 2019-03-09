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
   

