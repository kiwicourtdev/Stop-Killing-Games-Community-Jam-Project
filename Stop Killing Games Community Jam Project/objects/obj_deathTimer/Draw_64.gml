//-----draw timer

//setup
var c = c_white;
var c2 = c_red;

//timer countdown
timer++;

//timer box
if timer < global.timerMax{
	//outline
	draw_rectangle_color(10, 100, 118, 120, c, c, c, c, 1);
	
	//actual timer
	draw_rectangle_color(10, 100, 118-108*(timer/global.timerMax), 120, c, c, c, c, 0);
}else{ //draw death and delay reset
	draw_rectangle_color(0,0,128,128,c2,c2,c2,c2,0);
	if alarm[0] = -1
	alarm[0] = 60;
};