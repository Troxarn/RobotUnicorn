/// @description Insert description here
// You can write your code in this editor
x = creator.x;
y = creator.y;

if runonce = false
{
	hitboxid = creator.children[0];
	runonce = true;
}

//Buttonspamming delay
if delay != maxdelay
{
	delay --;
}

if delay <= 0
{
	delay = maxdelay;
}

if delay = maxdelay || delay = 0
{
	showdelaytimer = false;
}
else
{
	showdelaytimer = true;
}

