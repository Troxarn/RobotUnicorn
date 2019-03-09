/// @description Insert description here
// You can write your code in this editor

enemylistpos = ds_list_find_index(my_list, other.id);

if ds_list_find_value(my_list,enemylistpos) = other.id
{
	other.hp --;
}

ds_list_delete(my_list, enemylistpos);
