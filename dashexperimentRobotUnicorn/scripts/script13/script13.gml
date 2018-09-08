var object, n, list, variable, objectid;
object = argument0;
variable = argument1;
n = instance_number(object)
objectid = noone;
list = ds_priority_create();

with (object) ds_priority_add(list,id,variable);
repeat (n) objectid = ds_priority_delete_min(list);
ds_priority_destroy(list);
return objectid;

