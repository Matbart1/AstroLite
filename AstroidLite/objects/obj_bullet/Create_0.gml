/// @description 
speed = global.bulletSpeed;
direction = global.bulletAngle;
image_xscale = global.bulletSize;
image_yscale = global.bulletSize;
bulletList = [
ASTEROIDpew1,
ASTEROIDpew2,
ASTEROIDpew3,
ASTEROIDpew4,
ASTEROIDpew5
];


tempBulletList = array_shuffle(bulletList);
audio_play_sound(pitchAudio(tempBulletList[0]), 1, false);

