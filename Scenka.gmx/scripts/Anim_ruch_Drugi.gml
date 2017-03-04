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
    Zmien_Kierunek();
}
