/// @function VariableChangeScript(object, variable, change)
/// @description changing a variable in a nother object
/// @arg object in which the variable exists
/// @arg variable to change
/// @arg changevalue

var object, variable, change;
object = argument0;
variable = argument1;
change = argument2;

with object
{
		variable = change;
}


