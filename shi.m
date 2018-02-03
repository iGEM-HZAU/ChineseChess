function z=shi(dian,map)
i=dian(1);
j=dian(2);
a=[i-1,j-1;
    i-1,j+1;
    i+1,j-1;
    i+1,j+1];
z=filterP(a);
end
