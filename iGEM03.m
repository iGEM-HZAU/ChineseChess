clear all
clc
global b;
b=0;
rand('seed',2130);%2130
%map=round(rand(10,9)*7);
map=round(rand(10,9)*7);
for i=10:-1:1
    for j=9:-1:1
        b=0;
        drawmap([i,j],map)
        map=xialuozi([i,j],map);
        pause(0.1)
        if b~=0
            drawmap2(b,map)
            pause(0.3)
        end
    end
    map=skillf([randperm(10,1),randperm(9,1)],map);
    if b~=0
        drawmap2(b,map);
        pause(0.3);
    end
end
