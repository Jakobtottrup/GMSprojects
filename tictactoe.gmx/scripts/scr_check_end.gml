{
//check if the player won
if (scr_check_player_win())
{
    score_player +=1;
    sound_play(snd_win);
    show_message('YOU WIN');
    scr_field_init();
}
// check if the computer won
if (scr_check_computer_win())
{
    score_computer +=1;
    sound_play(snd_lose);
    show_message('YOU LOSE');
    scr_field_init();
}
// check if its a draw
if (scr_check_draw()){
    score_draw +=1;
    sound_play(snd_draw);
    show_message("IT'S A DRAW");
    scr_field_init();
}
}    
    
