/// @description Insert description here
// You can write your code in this editor


//Developer tool
if keyboard_check_pressed(ord("H"))
{
	if plzopen == false
	{
		plzopen = true;
	}
	else
	{
		plzopen = false;
	}
}

if plzopen == true && doordestroy == true
{
	if animationdestroy == true
	{
		image_speed = animationspeed;
		if image_index == image_number -1
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
}


//Opening door
if doordestroy == false
	{
	if openup == true
	{
		if plzopen == true
		{
			if y > (ystart - yopen)
			{
				y = y-openspeed;
			}
	
	
		}

		if plzopen == false
		{
			if y < (ystart)
			{
				y = y+openspeed;
			}
	
		}
	}

	if opendown == true
	{
		if plzopen == true
		{
			if y < (ystart + yopen)
			{
				y = y+openspeed;
			}
	
	
		}

		if plzopen == false
		{
			if y > (ystart)
			{
				y = y-openspeed;
			}
	
		}
	}

	if openright == true
	{
		if plzopen == true
		{
			if x < (xstart + xopen)
			{
				x = x+openspeed;
			}
	
	
		}

		if plzopen == false
		{
			if x > (xstart)
			{
				x = x-openspeed;
			}
	
		}
	}

	if openleft == true
	{
		if plzopen == true
		{
			if x > (xstart - xopen)
			{
				x = x-openspeed;
			}
	
	
		}

		if plzopen == false
		{
			if x < (xstart)
			{
				x = x+openspeed;
			}
	
		}
	}
}




