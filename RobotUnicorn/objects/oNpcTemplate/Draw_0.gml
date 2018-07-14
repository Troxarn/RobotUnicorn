/// @description Debug
////DEBUG/////

if global.debug = true
{
	draw_text(x+20, y, string(textstate))
}
//draw_text(x+20, y, "shown:" + string(textshown) + " textprogress10:" + string(textprogress10) + " textstate:" + string(textstate));

draw_self();

