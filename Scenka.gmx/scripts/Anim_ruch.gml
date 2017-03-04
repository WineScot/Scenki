var right;
var left;
var down;
var up;
var nic;
var obiekt;
obiekt=0;
if (obiekt==0) obiekt=sprite_index;
right=keyboard_check(ord('D'));
left=keyboard_check(ord('A'));
down=keyboard_check(ord('S'));
up=keyboard_check(ord('W'));
nic=keyboard_check(vk_nokey);

image_speed=1/5;

if (up)
{
    y-=4;
    sprite_index=obiekt-1;
}
if (down)
{
    y+=4;
    sprite_index=obiekt-4;
}

if (left)
{
    x-=4;
    sprite_index=obiekt-2; 
}

if(right)
{
    x+=4;
    sprite_index=obiekt-3;
}
/*if (nic)
{
    if (sprite_index==name+"_Tyl")
    sprite_index=name+"Tyl";
    if (sprite_index==name+"Przod")
    sprite_index=name+"Przod";
    if (sprite_index==name+"_Lewo")
    sprite_index=name+"Lewo";
    if (sprite_index==name+"_Prawo")
    sprite_index=name+"Prawo";
}*/
