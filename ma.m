function b=ma(dian,map)
x=dian(1);
y=dian(2);
a=[];
if x-1>=1
    if map(x-1,y)==0
        a=[a;x-2,y-1;
            x-2,y+1];
    end
end
if y+1<=9
    if map(x,y+1)==0
        a=[a;x-1,y+2;
            x+1,y+2];
    end
end
if x+1<=10
    if map(x+1,y)==0
        a=[a;x+2,y+1;
            x+2,y-1];
    end
end
if y-1>=1
    if map(x,y-1)==0
        a=[a;x+1,y-2;
            x-1,y-2];
    end
end
b=filterP(a);
end
    