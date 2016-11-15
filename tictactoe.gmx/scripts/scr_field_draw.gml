var i,j;
//draw the correct sprites
for(i=0; i<=2; i+=1)
    for(j=0; j<=2; j+=1)
    {
        if (field[i,j] == 1 )
            draw_sprite(spr_stone1,0,208+140*i,32+140*j);
        if (field[i,j] == 2)
            draw_sprite(spr_stone2,0,208+140*i,32+140*j);
    }
//draw the score
draw_set_font(fnt_score);
draw_set_halign(fa_right);
draw_set_color(c_blue);
draw_text(200,340,'Player Wins: ' + string(score_player));
draw_set_color(c_red);
draw_text(200,375,'Computer Wins: ' + string(score_computer));
draw_set_color(c_black);
draw_text(200,410,'Draws: ' + string(score_draw));
