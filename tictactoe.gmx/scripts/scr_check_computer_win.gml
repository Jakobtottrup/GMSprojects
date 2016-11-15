if(field[0,0] == 2 && field[0,1] == 2 && field[0,2] == 2) return true;
if(field[1,0] == 2 && field[1,1] == 2 && field[1,2] == 2) return true;
if(field[2,0] == 2 && field[2,1] == 2 && field[2,2] == 2) return true;
if(field[0,0] == 2 && field[1,0] == 2 && field[2,0] == 2) return true;
if(field[0,1] == 2 && field[1,1] == 2 && field[2,1] == 2) return true;
if(field[0,2] == 2 && field[1,2] == 2 && field[2,2] == 2) return true;
if(field[0,0] == 2 && field[1,1] == 2 && field[2,2] == 2) return true;
if(field[0,2] == 2 && field[1,1] == 2 && field[2,0] == 2) return true;
return false;
