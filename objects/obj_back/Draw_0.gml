/// @description Insert description here
// You can write your code in this editor


if(spriteCard == "spr_paper"){
	if(hover){
		draw_sprite(spr_card, 0, x, y-25);
		draw_sprite(spr_paper, 0, x+20, y);
	}else{
		draw_sprite(spr_card, 0, x, y);
		draw_sprite(spr_paper, 0, x+20, y+25);
	}
}else if(spriteCard == "spr_stone"){
	if(hover){
		draw_sprite(spr_card, 0, x, y-30);
		draw_sprite(spr_stone, 0, x+20, y);
	}else{
		draw_sprite(spr_card, 0, x, y);
		draw_sprite(spr_stone, 0, x+20, y+30);
	}
}else if(spriteCard == "spr_scissor"){
	if(hover){
		draw_sprite(spr_card, 0, x, y-25);
		draw_sprite(spr_scissor, 0, x+25, y);
	}else{
		draw_sprite(spr_card, 0, x, y);
		draw_sprite(spr_scissor, 0, x+25, y+25);
	}
}else{
	if(hover){
		draw_sprite(spr_card, 0, x, y-20);
		draw_sprite(spr_back, 0, x+20, y);
	}else{
		draw_sprite(spr_card, 0, x, y);
		draw_sprite(spr_back, 0, x+20, y+20);
	}
} 

draw_set_color(c_white)
draw_set_font(fnt_letter);
draw_text_transformed(60,70,global.pointPC,1,1,0);
draw_text_transformed(560,520,global.pointMe,1,1,0);

