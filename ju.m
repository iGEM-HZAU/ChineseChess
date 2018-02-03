function c=ju(dian,m)
a=dian(1);
b=dian(2);
c=[];
for i= (b+1):9        %这一段是对大于b的编写
    if m(a,i) > 0
        c=[c;a,i];
        break;        
    end
    c=[c;a,i];
end 
for j=(b-1):-1:1      %这一段是对小于b的编写
    if m(a,j) > 0
        c=[c;a,j];
        break;
    end
    c=[c;a,j];
end
for o=(a+1):10        %这一段是对大于a的编写
    if m(o,b) > 0
        c=[c;o,b];
        break;
    end
    c=[c;o,b];
end
for k=(a-1):-1:1      %这一段是对小于a的编写
    if m(k,b) > 0
        c=[c;k,b];
       break; 
    end
    c=[c;k,b];
end
end