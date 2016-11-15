var i,j;
for(i=0; i<=2; i+=1)
    for(j=0; j<=2; j+=1)
    {
        if(field[i,j] == 0) return false;
    }
return true;
