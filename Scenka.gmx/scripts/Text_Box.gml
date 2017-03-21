//textbox("text",speed,x,y,position,id,die)
txt = instance_create(argument2,argument3,text_obj);

with(txt)
{
    if(argument6 != -1)
    {
        alarm[0] = 30*argument6;
        die = argument6;
    }
    else
        die = 0;
    padding = 8;
    maxlength = view_wview[0];
    text = argument0;
    spd = argument1;
    font = fnt;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2),maxlength);
    text_height = string_height_ext(text,font_size+(font_size/2),maxlength);
    
    boxwidth = text_width + (padding*2);
    boxheight = text_height + (padding*2);
    if(argument4 == 0)
    {   
        x = 0;
        y = room_height-boxheight;
    }
    if(argument4 == 1)
    {
        x = room_width-boxwidth;
        y = room_height-boxheight;
    }
    if(argument5 != -1)
    {
        face = instance_create(x-24,min(room_height-24,y+24),face_obj);
        if(argument4 == 0)
        {
            face.x = boxwidth+24;
        }
        face.sprite_index = 8*argument5;
        face.image_speed = 0;
        face.image_xscale += 0.5;
        face.image_yscale += 0.5;
    }
}
