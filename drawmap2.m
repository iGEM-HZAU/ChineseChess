function drawmap2(dian,map)
N=30;
newmap=uint8(ones(10*N,9*N)*255);
newmap=cat(3,newmap,newmap,newmap);
for i=1:10
    for j=1:9
        ii=(N*(i-1)+1):(N*i);
        jj=(N*(j-1)+1):(N*j);
        if map(i,j)==1
            newmap(ii,jj,2)=0;
            newmap(ii,jj,3)=0;
        else if map(i,j)==2
                newmap(ii,jj,2)=128;
                newmap(ii,jj,3)=0;
            else if map(i,j)==3
                    newmap(ii,jj,3)=0;
                else if map(i,j)==4
                        newmap(ii,jj,1)=0;
                        newmap(ii,jj,3)=0;
                    else if map(i,j)==5
                            newmap(ii,jj,1)=0;
                        else if map(i,j)==6
                                newmap(ii,jj,1)=0;
                                newmap(ii,jj,2)=0;
                            else if map(i,j)==7
                                    newmap(ii,jj,1)=128;
                                    newmap(ii,jj,2)=0;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
mR=0;
mG=0;
mB=0;
i=dian(1);
j=dian(2);
%ÉÏºá
i1=(N*(i-1)+1):((N*(i-1)+1)+N/6);
j1=(N*(j-1)+1):(N*j);
newmap(i1,j1,1)=mR;
newmap(i1,j1,2)=mG;
newmap(i1,j1,3)=mB;
%ÏÂºá
i1=((N*(i-1)+1)+N*5/6):(N*i);
j1=(N*(j-1)+1):(N*j);
newmap(i1,j1,1)=mR;
newmap(i1,j1,2)=mG;
newmap(i1,j1,3)=mB;
%×óÊú
i1=(N*(i-1)+1):(N*i);
j1=(N*(j-1)+1):(N*(j-1)+1+N/6);
newmap(i1,j1,1)=mR;
newmap(i1,j1,2)=mG;
newmap(i1,j1,3)=mB;
%ÓÒÊú
i1=(N*(i-1)+1):(N*i);
j1=((N*(j-1)+1)+N*5/6):(N*j);
newmap(i1,j1,1)=mR;
newmap(i1,j1,2)=mG;
newmap(i1,j1,3)=mB;
imshow(newmap);
%0 °×255 255 255
%1 ³à255 0 0
%2 ³È255 128 0
%3 »Æ255 255 0
%4 ÂÌ0 255 0
%5 Çà0 255 255
%6 À¶0 0 255
%7 ×Ï128 0 255
end