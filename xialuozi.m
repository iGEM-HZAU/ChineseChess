function a=xialuozi(dian,a)
global b
e=[];%eΪ��������ƶ�������λ��
%�����Ϊ0�����������ӻ���
if a(dian(1),dian(2))==0
    return;
end
s=0;%�Ϸ���Ӫ
i=dian(1);j=dian(2);
%�ж���������
if a(dian(1),dian(2))==1
     e=ju(dian,a);                          % e���е㹹�ɵľ���
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
n1=size(e,1);% n1���µ������
if n1==0
    return;
end
f=[];
for i=1:n1
    if a(e(i,1),e(i,2))>0
    %if a(e(i,1),e(i,2))>=0
        f=[f;e(i,:)];     % f����0�ĵ㹹�ɵľ���
    end
end
n2=size(f,1);
if n2==0
    return;
end
b=f(randperm(n2,1),:);             % b���ȡ�ĵ������         
a(b(1),b(2))=a(dian(1),dian(2));             % d���ֵ
a(dian(1),dian(2))=0;
end

 
