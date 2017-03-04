var right;
var left;
var down;
var up;
var nic;
var akt_kierunek = 2;
right=keyboard_check(ord('D'));
left=keyboard_check(ord('A'));
down=keyboard_check(ord('S'));
up=keyboard_check(ord('W'));
nic=keyboard_check(vk_nokey);

obiekt.image_speed=1/5;

if (up)
{
    obiekt.y-=4;
    obiekt.sprite_index=(iid*8)+3;
    akt_kierunek = 0;
}
if (down)
{
    obiekt.y+=4;
    obiekt.sprite_index=(iid*8)+0;
    akt_kierunek = 2;
}

if (left)
{
    obiekt.x-=4;
    obiekt.sprite_index=(iid*8)+2; 
    akt_kierunek = 3;
}

if(right)
{
    obiekt.x+=4;
    obiekt.sprite_index=(iid*8)+1;
    akt_kierunek = 1;
}
if (nic)
{
    if (akt_kierunek == 0)
    obiekt.sprite_index=(iid*8)+7;
    if (akt_kierunek == 1)
    obiekt.sprite_index=(iid*8)+5;
    if (akt_kierunek == 2)
    obiekt.sprite_index=(iid*8)+4;
    if (akt_kierunek == 3)
    obiekt.sprite_index=(iid*8)+6;
}
