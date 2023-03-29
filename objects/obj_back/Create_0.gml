/// @description Insert description here
// You can write your code in this editor
back = true;
paper = false;
scissor = false;
stone = false;
done1 = false;
done2 = false;
done3 = false;
done4 = false;
done5 = false;
done6 = false;
done7 = false;
done8 = false;
spriteCard = "spr_back";
global.gameState = "deal";
choice = noone;
duration = 2;
locs = [[160,30],[290,30],[420,30],[160,480],[290,480],[420,480],[520,150],[30, 260]];
start = [30, 260];
locsMe = [290, 360];
locsPC = [290, 170];
global.pointMe = 0;
global.pointPC = 0;
global.valuePC = noone;
global.valueMe = noone;
progress = 0;
progress2 = 0;
progress3 = 0;
first = true;
sec = false;
third = false;
fourth = false;
fifth = false;
sixth = false;

first2 = true;
sec2 = false;
third2 = false;
fourth2 = false;
fifth2 = false;
sixth2 = false;

hover = false;
hover_ = true;

randomIndex = random_range(0,2);

move_id = noone;
count = noone;
num = noone;
global.times = false;
