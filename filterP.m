function p=filterP(chess)
p=[];
for i=1:size(chess,1)
    if chess(i,1)>0&&chess(i,1)<11&&chess(i,2)>0&&chess(i,2)<10
        p=[p;chess(i,:)];
    end
end
end