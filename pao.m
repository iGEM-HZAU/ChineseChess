function d = pao(dian,map)
x=dian(1);
y=dian(2);
d = [];
for i = x-1:-1:1
    if map(i,y) == 0
        a = i;
        b = y;
        d = [d; [a,b]];
    else break;
    end
end
for i = x+1:1:10
    if map(i,y) == 0
        a = i;
        b = y;
        d = [d; [a,b]];
    else break;
    end
end
for j = y-1:-1:1
    if map(x,j) == 0
        a = x;
        b = j;
        d = [d; [a,b]];
    else break;
    end
end
for j = y+1:1:9
    if map(x,j) == 0
        a = x;
        b = j;
        d = [d;[a,b]];
    else break;
    end
end

%³Ô
m = 0;
for i = x-1:-1:1
    if map(i,y) ~= 0
        m = m + 1;
    end
    if m == 2
        a = i;
        b = y;
        d = [d; [a,b]];
        break;
    end
end
n = 0;
for i = x+1:1:10
    if map(i,y) ~= 0
        n = n + 1;
    end
    if n == 2
        a = i;
        b = y;
        d = [d; [a,b]];
        break;
    end
end
l = 0;
for j = y-1:-1:1
    if map(x,j) ~= 0
        l = l + 1;
    end
    if l == 2
        a = x;
        b = j;
        d = [d; [a,b]];
        break;
    end
end
o = 0;
for j = y+1:1:9
    if map(x,j) ~= 0
        o = o + 1;
    end
    if o == 2
        a = x;
        b = j;
        d = [d; [a,b]];
        break;
    end
end