/// @description Insert description here
// You can write your code in this editor

enemylistpos = ds_list_find_index(my_list, other.id);

if ds_list_find_value(my_list,enemylistpos) = other.id
{
	other.hp --;
	with other
	{
		var i = 0;
		for (i = 0; i < (array_length_1d(other.instant_kill)); i++)
		{
			if object_get_name(object_index) = other.instant_kill[i]
			{
				instance_destroy();
			}
		}
	}
}

ds_list_delete(my_list, enemylistpos);
