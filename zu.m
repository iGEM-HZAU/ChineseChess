function p=zu(dian,s)
x=dian(1);
y=dian(2);
a=[];
if s==0
    a=[a;x+1,y];
    if x>=6
        a=[a;x,y-1;
            x,y+1];
    end
else if s==1
        a=[a;x-1,y];
        if x<=5
            a=[a;x,y-1;
                x,y+1];
        end
    end
end
p=filterP(a);
end