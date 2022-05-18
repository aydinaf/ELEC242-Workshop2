% Matlab solution to question 5:
% Part a)

w=0.5:5:3000;
a=w*j+100;
b=w*j+200;
c=w*j+10;
d=w*j+1000;
e=w*j+10000;
x1=(a.*b)./(c.*d.*e);
subplot(1,3,1);
r=20*log(abs(x1));
semilogx(w,r);
subplot(1,3,2);
semilogx(w,angle(x1));
max_x1=max(r);
%low att
i=0.5; 
low_att=0;
n=1;
while(i<=3000)
a=i*j+100;
b=i*j+200;
c=i*j+10;
d=i*j+1000;
e=i*j+10000;
x1(n)=(a.*b)./(c.*d.*e);
if(x1(n)<=max_x1 && x1(n)>=(max_x1-20))
    low_att(n)=i;
end
i=i+5;
n=n+1;
end
display(low_att)
