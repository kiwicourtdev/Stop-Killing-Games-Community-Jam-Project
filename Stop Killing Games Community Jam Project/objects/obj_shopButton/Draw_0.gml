if type = 2 || global.upgrades[type] != 6{
	//----------draw progressing box

	//-----increment progress

	if instance_place(x,y,obj_player) && obj_player.speed = 0 && progress < progressMax && alarm[0] = -1
	progress++;
	else if progress > 0
	progress--;

	//-----draw box

	draw_sprite(sprite_index, 0, x, y);

	var c = c_white
	
	//actual timer
	if progress != 0
	draw_rectangle_color(x-2, y-2, x+(sprite_width-2)*(progress/progressMax), y+sprite_height-2, c, c, c, c, 0);

	//-----draw upgrade type and cost

	//cost
	if type != 2{
		draw_set_halign(fa_middle);
		draw_set_font(ft_shop);
		cost = global.upgradeCosts[type, global.upgrades[type]];
		draw_text(x-12,y-12,string(cost));
	};

	//graphic
	var spr = spr_time;

	switch(type){
		case 0: //time upgrade
		
		break;
	
		case 1: //speed upgrade
			spr = spr_spd;
		break;
	
		case 2: //continue button
			spr = spr_cont;
		break;
	};

	draw_sprite(spr,0,x-20,y);
};