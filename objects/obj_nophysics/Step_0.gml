/// @description Insert description here
// You can write your code in this editor

if(deslocation == max_deslocation){
	spd *= -1;
	dir = -1;
}
if(deslocation == 0){
	spd *= -1;
	dir = 1;
}

deslocation += dir;

phy_linear_velocity_x = spd;