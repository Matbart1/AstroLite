/// @description Occurs on inception
// You can write your code in this editor
speed = 10;
direction = global.bulletAngle;

bulletList = [
ASTEROIDpew1,
ASTEROIDpew2,
ASTEROIDpew3,
ASTEROIDpew4,
ASTEROIDpew5
];


tempBulletList = array_shuffle(bulletList);
audio_play_sound(tempBulletList[0], 1, false)

