// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Compare(PC, me){
	var result = 0;
	if(PC == "spr_scissor"){
		if(me == "spr_scissor"){
			result = 0;
		}else if(me == "spr_stone"){
			result = 1;
		}else if(me == "spr_paper"){
			result = -1;
		}
	}else if(PC == "spr_stone"){
		if(me == "spr_stone"){
			result = 0;
		}else if(me == "spr_paper"){
			result = 1;
		}else if(me == "spr_scissor"){
			result = -1;
		}
	}else if(PC == "spr_paper"){
		if(me == "spr_paper"){
			result = 0;
		}else if(me == "spr_scissor"){
			result = 1;
		}else if(me == "spr_stone"){
			result = -1;
		}
	}
	return result;

}