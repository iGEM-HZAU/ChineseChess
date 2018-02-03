function a=xialuozi(dian,a)
global b
e=[];%e为该坐标可移动的所有位点
%如果点为0，则跳过落子环节
if a(dian(1),dian(2))==0
    return;
end
s=0;%上方阵营
i=dian(1);j=dian(2);
%判定棋子类型
if a(dian(1),dian(2))==1
     e=ju(dian,a);                          % e所有点构成的矩阵
else if a(dian(1),dian(2))==2
        e=ma(dian,a);
    else if a(dian(1),dian(2))==3
            e=xiang(dian,s);
        else if a(dian(1),dian(2))==4
                e=shi(dian,a);
            else if a(dian(1),dian(2))==5
                    e=shuai(dian,a);
                else if a(dian(1),dian(2))==6                        
                        e=pao(dian,a);                        
                    else if a(dian(1),dian(2))==7
                            e=zu(dian,s);
                        end
                    end
                end
            end
        end
    end
end
n1=size(e,1);% n1可下点的数量
if n1==0
    return;
end
f=[];
for i=1:n1
    if a(e(i,1),e(i,2))>0
    %if a(e(i,1),e(i,2))>=0
        f=[f;e(i,:)];     % f大于0的点构成的矩阵
    end
end
n2=size(f,1);
if n2==0
    return;
end
b=f(randperm(n2,1),:);             % b随机取的点的坐标         
a(b(1),b(2))=a(dian(1),dian(2));             % d点的值
a(dian(1),dian(2))=0;
end

 
