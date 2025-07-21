//draw material graphic
draw_sprite_ext(spr_material,0,6,6,.75,.75,0,c_white,1);
draw_set_font(ft_hud);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(12,5,string(global.materials));