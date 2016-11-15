var level;
level = (score_player+1) / (score_computer+1);

if (level > 0.5)
    {if scr_find_win() exit;}
if (level > 0.8)
    {if scr_find_lose() exit;}
if (level > 1.2)
    {if scr_find_center() exit;}
scr_find_random();
