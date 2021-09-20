/// @description Insert description here
// You can write your code in this editor
xspd = 0;
yspd = 0;
spd = 0;
bouncedecay = 0.8;
rot_angle = 0;

#region SlingShoot
max_power = 50;
pow = 0;
dir = 0;
m_dir = 0;
held = false;
frict = 0.5;
percent = 20;
#endregion

state = BallState.STOP;

enum BallState{
	MOVEMENT,
	STOP
}