/// @description On Creation
// You can write your code in this editor
speed = global.rockSpeed;
direction = random(360);
image_angle = random(360);

healthPoints = global.bigRockHealth;

rockList = [
obj_rock,
obj_rock2
];

hitList = [
ASTEROIDblam1,
ASTEROIDblam2,
ASTEROIDblam3,
];

dentList = [
ASTEROIDdent1,
ASTEROIDdent2,
ASTEROIDdent3,
ASTEROIDdent4
];

locationListX = [
-50,
-100,
room_width + 50,
room_width + 100
];

locationListY = [
-50,
-100,
room_height + 50,
room_height + 100
];