

if image_alpha > 0
{
	image_alpha -= 0.02
}


if image_alpha <= 0
{
	image_alpha = 1
}

//Show winning screen
if StageClear = true
{
	Delay--
}

//After delay make player go home
if Delay <= 0
{
	room_goto(rHome)
	StageClear = false
}