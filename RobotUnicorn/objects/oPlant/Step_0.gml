if hp <= 0
{
	image_index = 1
	Delay--
}

if Delay = 99
{
	global.BadPoints += 1

}

if Delay = 0
{
instance_destroy()
}
