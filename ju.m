function c=ju(dian,m)
a=dian(1);
b=dian(2);
c=[];
for i= (b+1):9        %��һ���ǶԴ���b�ı�д
    if m(a,i) > 0
        c=[c;a,i];
        break;        
    end
    c=[c;a,i];
end 
for j=(b-1):-1:1      %��һ���Ƕ�С��b�ı�д
    if m(a,j) > 0
        c=[c;a,j];
        break;
    end
    c=[c;a,j];
end
for o=(a+1):10        %��һ���ǶԴ���a�ı�д
    if m(o,b) > 0
        c=[c;o,b];
        break;
    end
    c=[c;o,b];
end
for k=(a-1):-1:1      %��һ���Ƕ�С��a�ı�д
    if m(k,b) > 0
        c=[c;k,b];
       break; 
    end
    c=[c;k,b];
end
end