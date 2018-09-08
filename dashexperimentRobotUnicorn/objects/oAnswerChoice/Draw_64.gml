/// @description Insert description here
// You can write your code in this editor
draw_set_font(fInGame);
draw_set_color(c_black);
draw_self();

x = oAnswerBox.guix + oAnswerBox.padding;
y = oAnswerBox.guiy + sprite_height * answerid + oAnswerBox.padding + (ytextpadding * answerid);
choiceguix = x;
choiceguiy = y;
if waittime <= 0
	{
	draw_text_ext(x + xtextpadding, y + ytextpadding, string(answerchoice), 1, sprite_width - (2 * xtextpadding));
	}
else
	{
		waittime --;
	}

FontReset();