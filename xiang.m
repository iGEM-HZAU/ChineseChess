function z=xiang(dian,s)
x=dian(1,1);
y=dian(1,2);
z=[];
if s==0
    if x+2>0&&x+2<10&&y+2>0&&y+2<9&&x+2>6
     z=[z;x+2,y+2];
    end
    if x+2>0&&x+2<10&&y-2>0&&y-2<9&&x-2>6
     z=[z;x+2,y-2];
    end
    if x-2>0&&x-2<10&&y+2>0&&y+2<9&&x+2>6
     z=[z;x-2,y+2];
    end
    if x-2>0&&x-2<10&&y-2>0&&y-2<9&&x-2>6
     z=[z;x-2,y-2];
    end
end

if s==1
    if x+2>0&&x+2<10&&y+2>0&&y+2<9&&x+2<6
     z=[z;x+2,y+2];
    end
    if x+2>0&&x+2<10&&y-2>0&&y-2<9&&x-2<6
     z=[z;x+2,y-2];
    end
    if x-2>0&&x-2<10&&y+2>0&&y+2<9&&x+2<6
     z=[z;x-2,y+2];
    end
    if x-2>0&&x-2<10&&y-2>0&&y-2<9&&x-2<6
     z=[z;x-2,y-2];
    end
end
end
 
  
 