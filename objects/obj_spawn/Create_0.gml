/// @description Insert description here
// You can write your code in this editor
back = true;
paper = false;
scissor = false;
stone = false;
global.cards = ds_list_create();
global.cards_current = 24;
global.CARDS_SUM = 24;
//generate numbers in list
for(var i = 0; i < 8; i++){
	ds_list_add(global.cards,"spr_paper");
	ds_list_add(global.cards,"spr_scissor");
	ds_list_add(global.cards,"spr_stone");
}
randomize();
ds_list_shuffle(global.cards);

cards_size = ds_list_size(global.cards);
for(var i=0; i<cards_size; i++){
	instance_create_depth(x, y, 0-i, obj_back);
}


global.cards_id = ds_list_create();
for (var i = 0; i < instance_number(obj_back); ++i;){
   ds_list_add(global.cards_id,instance_find(obj_back,i));
}

