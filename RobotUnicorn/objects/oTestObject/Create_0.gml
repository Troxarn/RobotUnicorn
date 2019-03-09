/// @description Insert description here
// You can write your code in this editor
my_list = ds_list_create();
enemylistpos = noone;
var i;
for (i = 0; i < instance_number(oEnemyParent); i ++)
   {
   ds_list_add(my_list, (instance_find(oEnemyParent, i)))
   }
   
dslist0 = my_list[| 0]
dslist1 = my_list[| 1]