figure(1);
a=imread('���O��.png');
b=imread('�P�P.png');
c=imread('���j��.png');
e=imread('���ꤧ��.png');
i=1;

h=uicontrol('style','push','position',[400 20 80 30],'string','next');
cmd='i=i+1';
set(h,'callback',cmd);

if i==1
    image(a);
end
if i==2
    fprintf('123456\n');
    image(b);
end

