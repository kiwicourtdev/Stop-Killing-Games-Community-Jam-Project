if type = 2 || global.upgrades != array_length(global.upgradeAmounts){
	//----------draw progressing box

	//-----increment progress

	if instance_place(x,y,obj_player) && /*obj_player.speed = 0 &&*/ progress < progressMax && alarm[0] = -1
	progress++;
	else if progress > 0
	progress--;

	//-----draw box

	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	var c = c_white
	
	//actual timer
	if progress != 0
	draw_rectangle_color(x-2, y-2, x+(sprite_width-2)*(progress/progressMax), y+sprite_height-2, c, c, c, c, 0);

	//-----draw upgrade type and cost

	//cost
	if type != 2{
		draw_set_halign(fa_middle);
		draw_set_font(ft_shop);
		cost = global.upgradeCosts[global.upgrades];
		draw_text(x-6,y-8,string(cost));
		draw_sprite(spr_material,0,x-18,y-6);
	};

	//graphic
	var spr = spr_time;

	if global.upgrades % 2 = 1
	spr = spr_spd;
	
	if type = 2
	spr = spr_cont;

	draw_sprite(spr,0,x-20,y);
};