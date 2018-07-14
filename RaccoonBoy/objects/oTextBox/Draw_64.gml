/// @description Add letters over time

y = (global.PortHeight / 2) + 100
x = (global.PortWidth - sprite_get_width(sTextBox)) / 2 +10

//Sprite that the text is drawn on top of
draw_sprite(sTextBox,-1,global.PortWidth / 2,global.PortHeight - BoxPlacementPaddingBottom)


//Draw name on top of textbox sprite
draw_set_font(fInGame)
draw_set_halign(fa_center)
draw_set_color(c_black)
draw_text_ext(global.PortWidth / 2,y-5,Name,25,30)

charCount += 3
Print = string_copy(Text[Page],1,charCount)


draw_set_font(Font)
draw_set_halign(fa_left)
draw_set_color(FontColor)
draw_text_ext(x+Padding,y+TopPadding,Print,25,MaxLength)

//fontsaver/reseter
draw_set_font(-1);
draw_set_color(c_white)


