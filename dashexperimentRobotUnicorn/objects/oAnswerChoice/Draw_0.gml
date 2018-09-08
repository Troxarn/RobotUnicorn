/// @description Insert description here
// You can write your code in this editor


draw_set_font(fInGame)
if global.debug = true
{
draw_self();
draw_text_ext(x + xtextpadding, y + ytextpadding, string(answerchoice), 1, sprite_width - (2 * xtextpadding));
}
draw_set_font(-1)