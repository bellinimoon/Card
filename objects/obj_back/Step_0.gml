/// @description Insert description here
// You can write your code in this editor

if (global.gameState == "deal"){
	if(first){	
		with(instance_id_get(global.cards_current)){
			if(!done1){
				audio_play_sound(snd_deal, 10, false);	
				done1 = true;
			}
			startX = self.x;
			startY = self.y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			self.x = lerp(startX, locs[0][0], progress);
			self.y = lerp(startY, locs[0][1], progress);
			if(self.x == locs[0][0] && self.y == locs[0][1]){
				first = false;
				sec = true;
				progress = 0;
				//audio_play_sound(snd_deal, 10, false);	
			}
		}
	}
	if(sec){
		with(instance_id_get(global.cards_current-1)){
			if(!done2){
				audio_play_sound(snd_deal, 10, false);	
				done2 = true;
			}
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			self.x = lerp(startX, locs[1][0], progress);
			self.y = lerp(startY, locs[1][1], progress);
			if(self.x == locs[1][0] && y == locs[1][1]){
				progress = 0;
				//audio_play_sound(snd_deal, 10, false);
				sec = false;
				third = true;
			}
		}
	}
	if(third){
		with(instance_id_get(global.cards_current-2)){
			if(!done3){
				audio_play_sound(snd_deal, 10, false);	
				done3 = true;
			}
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			x = lerp(startX, locs[2][0], progress);
			y = lerp(startY, locs[2][1], progress);
			if(x == locs[2][0] && y == locs[2][1]){
				//audio_play_sound(snd_deal, 10, false);
				progress = 0;
				third = false;
				fourth = true;
			}
		}
	}
	if(fourth){
		with(instance_id_get(global.cards_current-3)){
			if(!done4){
				audio_play_sound(snd_deal, 10, false);	
				done4 = true;
			}
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			x = lerp(startX, locs[3][0], progress);
			y = lerp(startY, locs[3][1], progress);
			if(x == locs[3][0] && y == locs[3][1]){
				//audio_play_sound(snd_deal, 10, false);
				progress = 0;
				fifth = true;
				fourth = false;
			}
		}
	}
	if(fifth){
		with(instance_id_get(global.cards_current-4)){
			if(!done5){
				audio_play_sound(snd_deal, 10, false);	
				done5 = true;
			}
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			x = lerp(startX, locs[4][0], progress);
			y = lerp(startY, locs[4][1], progress);
			if(x == locs[4][0] && y == locs[4][1]){
				//audio_play_sound(snd_deal, 10, false);
				progress = 0;
				sixth = true;
				fifth = false;
			}
		}
	}
	if(sixth){
		with(instance_id_get(global.cards_current-5)){
			if(!done6){
				audio_play_sound(snd_deal, 10, false);	
				done6 = true;
			}
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			x = lerp(startX, locs[5][0], progress);
			y = lerp(startY, locs[5][1], progress);
			if(x == locs[5][0] && y == locs[5][1]){
				//audio_play_sound(snd_deal, 10, false);
				progress = 0;
				first = true;
				sixth = false;
				global.gameState = "PC_select";
			}
		}
	}
}
if(global.gameState == "PC_select"){
	first2 = true;
	sec2 = false;
	third2 = false;
	fourth2 = false;
	fifth2 = false;
	sixth2 = false;
	first = true;
	sec = false;
	third = false;
	fourth = false;
	fifth = false;
	sixth = false;
	if(randomIndex == 0){
		  with(instance_id_get(global.cards_current)){
			  	choice = instance_id_get(global.cards_current);
				count = global.cards_current;
				startX = x;
				startY = y;
				progress = min(1, progress + (1 / (room_speed * duration)))
				x = lerp(startX, locsPC[0], progress);
				y = lerp(startY, locsPC[1], progress);
				if(x == locsPC[0] && y == locsPC[1]){
					progress = 0;
					back = false;
					//if(!done7){
					//	audio_play_sound(snd_deal, 10, false);	
					//	done7 = true;
					//}
					global.gameState = "select";
				}
			}
	  }else if(randomIndex == 1){
		  with(instance_id_get(global.cards_current-1)){
				choice = instance_id_get(global.cards_current-1);
				count = global.cards_current-1;
				startX = x;
				startY = y;
				progress = min(1, progress + (1 / (room_speed * duration)))
				x = lerp(startX, locsPC[0], progress);
				y = lerp(startY, locsPC[1], progress);
				if(x == locsPC[0] && y == locsPC[1]){
					//if(!done7){
					//	audio_play_sound(snd_deal, 10, false);	
					//	done7 = true;
					//}
					progress = 0;
					global.gameState = "select";
					//spriteCard = ds_list_find_value(global.cards, global.cards_current-1);
				}
			}
	  }else{
		  with(instance_id_get(global.cards_current-2)){
			  	choice = instance_id_get(global.cards_current-2);
				count = global.cards_current-2;
				startX = x;
				startY = y;
				progress = min(1, progress + (1 / (room_speed * duration)))
				x = lerp(startX, locsPC[0], progress);
				y = lerp(startY, locsPC[1], progress);
				if(x == locsPC[0] && y == locsPC[1]){
					//if(!done7){
					//	audio_play_sound(snd_deal, 10, false);	
					//	done7 = true;
					//}
					progress = 0;
					//spriteCard = ds_list_find_value(global.cards, global.cards_current-2);
					global.gameState = "select";	
				}
			}
	  }
}

if(global.gameState == "select"){
	if(mouse_y >= 2*room_height/3){
		if(hover_){
			hover = collision_circle(mouse_x, mouse_y, 20, self, true, false);
		}
		if(mouse_check_button_pressed(mb_left)){
			if(x< 200){
				num = global.cards_current-3;
			}else if(x > 200 && x <400){
				num = global.cards_current-4;
			}else{
				num = global.cards_current-5;
			}
			move_id = instance_position(mouse_x, mouse_y,self);
		}
		if(move_id != noone){
			hover_ = false;
			with(move_id){
					startX = x;
					startY = y;
					progress = min(1, progress + (1 / (room_speed * duration)))
					x = lerp(startX, locsMe[0], progress);
					y = lerp(startY, locsMe[1], progress);
					if(x == locsMe[0] && y == locsMe[1]){
						//if(!done8){
						//	audio_play_sound(snd_deal, 10, false);	
						//	done8 = true;
						//}
						spriteCard = ds_list_find_value(global.cards, num);
						global.valueMe = ds_list_find_value(global.cards, num);
						global.gameState = "PCReveal";
						hover_ = true;
					}
			}
		}
	}
}

if(global.gameState == "PCReveal"){
	move_id = noone;
	with(choice){
		spriteCard = ds_list_find_value(global.cards, count);
		global.valuePC = ds_list_find_value(global.cards, count);
		global.gameState = "compare";
	}
}

if(global.gameState == "compare"){
	var value = Compare(global.valuePC, global.valueMe);
	if(value == 1){
		global.pointMe ++;
		audio_play_sound(snd_win, 1, false);	
		alarm[0] = 10;
		global.gameState = "return";
	}else if(value == -1){
		global.pointPC ++;
		audio_play_sound(snd_lose, 1, false);
		alarm[0] = 10;
		global.gameState = "return";
	}else{
		alarm[0] = 10;
		global.gameState = "return";
	}
}

if (global.gameState == "return" && global.times){
	if(first2){	
		with(instance_id_get(global.cards_current)){
			spriteCard = "spr_back";
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			x = lerp(startX, locs[6][0], progress);
			y = lerp(startY, locs[6][1], progress);
			if(x == locs[6][0] && y == locs[6][1]){
				progress = 0;
				first2 = false;
				sec2 = true;
			}
		}
	}
	if(sec2){
		with(instance_id_get(global.cards_current-1)){
			spriteCard = "spr_back";
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			x = lerp(startX, locs[6][0], progress);
			y = lerp(startY, locs[6][1], progress);
			if(x == locs[6][0] && y == locs[6][1]){
				progress = 0;
				sec2 = false;
				third2 = true;
			}
		}
	}
	if(third2){
		with(instance_id_get(global.cards_current-2)){
			spriteCard = "spr_back";
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			x = lerp(startX, locs[6][0], progress);
			y = lerp(startY, locs[6][1], progress);
			if(x == locs[6][0] && y == locs[6][1]){
				progress = 0;
				third2 = false;
				fourth2 = true;
			}
		}
	}
	if(fourth2){
		with(instance_id_get(global.cards_current-3)){
			spriteCard = "spr_back";
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			x = lerp(startX, locs[6][0], progress);
			y = lerp(startY, locs[6][1], progress);
			if(x == locs[6][0] && y == locs[6][1]){
				progress = 0;
				fifth2 = true;
				fourth2 = false;
			}
		}
	}
	if(fifth2){
		with(instance_id_get(global.cards_current-4)){
			spriteCard = "spr_back";
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			x = lerp(startX, locs[6][0], progress);
			y = lerp(startY, locs[6][1], progress);
			if(x == locs[6][0] && y == locs[6][1]){
				progress = 0;
				sixth2 = true;
				fifth2 = false;
			}
		}
	}
	if(sixth2){
		with(instance_id_get(global.cards_current-5)){
			spriteCard = "spr_back";
			startX = x;
			startY = y;
			progress = min(1, progress + (1 / (room_speed * duration)))
			x = lerp(startX, locs[6][0], progress);
			y = lerp(startY, locs[6][1], progress);
			if(x == locs[6][0] && y == locs[6][1]){
				progress = 0;
				sixth2 = false;
				first2 = true;
				global.cards_current -= 6;
				if(global.cards_current > 0){
					global.gameState = "deal";
				}else{
					global.gameState = "again";
				}
			}
		}
	}
}
if(global.gameState == "again"){
	global.cards_current = global.CARDS_SUM;
	var i = 0;
	var progress_temp = 0;
	while(i <global.cards_current){	
		var xPos = locs[7][0];
		var yPos = locs[7][1];
		var duration_temp = 2;
		with(instance_id_get(i)){
			startX = x;
			startY = y;
			progress_temp = min(1, progress_temp + (1 / (room_speed * duration_temp)));
			x = lerp(startX, xPos, progress_temp);
			y = lerp(startY, yPos, progress_temp);
			if(x == xPos && y == yPos){
				progress_temp = 0;
				i++;
			}
		}
	}
	global.gameState = "deal";	
}
