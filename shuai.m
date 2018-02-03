function s=shuai(dian,map)
i=dian(1);
j=dian(2);
a=[i-1,j;
    i+1,j;
    i,j-1;
    i,j+1];
s=filterP(a);
end
