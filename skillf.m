function table=skillf(dian,table)
x=dian(1);
y=dian(2);
if(x>=2&&x<=9&&y>=2&&y<=8)
    table(x-1,y-1)=0;
    table(x-1,y)=0;
    table(x-1,y+1)=0;
    table(x,y-1)=0;
    table(x,y)=0;
    table(x,y+1)=0;
    table(x+1,y-1)=0;
    table(x+1,y)=0;
    table(x+1,y+1)=0;
elseif x==1&&y==1
    table(x,y)=0;
    table(x+1,y)=0;
    table(x+1,y+1)=0;
    table(x,y+1)=0;
elseif x==10&&y==1
    table(x,y)=0;
    table(x-1,y)=0;
    table(x-1,y+1)=0;
    table(x,y+1)=0;
elseif x==1&&y==9
    table(x,y)=0;
    table(x,y-1)=0;
    table(x+1,y)=0;
    table(x+1,y-1)=0;
elseif x==10&&y==9
    table(x,y)=0;
    table(x,y-1)=0;
    table(x-1,y)=0;
    table(x-1,y-1)=0;
elseif x>=2&&x<=10&&y==1
    table(x-1,y)=0;
    table(x,y)=0;
    table(x+1,y)=0;
    table(x-1,y+1)=0;
    table(x,y+1)=0;
    table(x+1,y+1)=0;
elseif x>=2&&x<=10&&y==9
    table(x-1,y)=0;
    table(x,y)=0;
    table(x+1,y)=0;
    table(x-1,y-1)=0;
    table(x,y-1)=0;
    table(x+1,y-1)=0;
elseif x==1&&y>=2&&y<=8
    table(x,y-1)=0;
    table(x,y)=0;
    table(x,y+1)=0;
    table(x+1,y-1)=0;
    table(x+1,y)=0;
    table(x+1,y+1)=0;
elseif x==10&&y>=2&&y<=8        
    table(x,y-1)=0;
    table(x,y)=0;
    table(x,y+1)=0;
    table(x-1,y-1)=0;
    table(x-1,y)=0;
    table(x-1,y+1)=0;
end
end