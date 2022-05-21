% ELEC 242 - Summer 2022 - Workshop 2 Question 5
% Matlab solution to question 5:
% Aydin Azari Farhad - 40063330
% Kavish ##########
%---------------------------------
% Part a)

w=0.5:5:3000;
a=w*j+100;
b=w*j+200;
c=w*j+10;
d=w*j+1000;
e=w*j+10000;
x1=(a.*b)./(c.*d.*e);

%magnitude vs frequency
subplot(3,4,1);

r=20*log10(abs(x1));

semilogx(w,r);

xlabel('frequency')
ylabel('magnitude')
%phase vs frequency
subplot(3,4,2);
semilogx(w,angle(x1));

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
r1=20*log10(abs(x1));
max_x1=max(r1);
if(r1(n)<=max_x1 && r1(n)>=(max_x1-20))
    
    low_att(n)=i;
else
    low_att(n)=0;
end
i=i+5;
n=n+1;
end

subplot(3,4,3);
semilogx(low_att,r)

%high att
i=0.5; 
high_att=0;
n=1;
min_x1=min(r);
while(i<=3000)
a=i*j+100;
b=i*j+200;
c=i*j+10;
d=i*j+1000;
e=i*j+10000;
x1(n)=(a.*b)./(c.*d.*e);
r1=20*log10(abs(x1));
max_x1=max(r1);
if(r1(n)<=max_x1-30 && r1(n)>=(min_x1))
    high_att(n)=i;
else 
    high_att(n)=0;

end

i=i+5;
n=n+1;
end

subplot(3,4,4);
semilogx(high_att,r)

%--------------------------------
% Part B)
a2=w*j;
b2=40*w*j+40000;

%since it will be a matrix opperation, there should be the same size as a2
%and b2 matrices
for i=1:600
c2(i)=1000;
end

x2= c2./(a2.^2+b2);
%magnitude vs frequency

r2=20*log10(abs(x2));
subplot(3,4,5);
semilogx(w,r2);
title('Magnitude vs Frequency')
xlabel('frequency')
ylabel('magnitude')
%phase vs frequency
subplot(3,4,6);
semilogx(w,angle(x2));

title('Angle vs Frequency')
xlabel('frequency')
ylabel('angle')

%low att
k=0.5; 
low_att2=0;
n=1;
max_x2=max(r2);
min_x2=min(r2);
while(k<=3000)

x2(n)= c2(n)/(a2(n)^2+b2(n));
r22(n)=20*log10(abs(x2(n)));

if(r22(n)<=max_x2 && r22(n)>=(max_x2-20))
    
    low_att2(n)=k;
else
    low_att2(n)=0;
end
k=k+5;
n=n+1;
end

subplot(3,4,7)
semilogx(low_att2,r22)

title('Low Attinuation')
xlabel('frequency')
ylabel('magnitude')

k=0.5; 
high_att2=0;
n=1;
while(k<=3000)

x2(n)= c2(n)/(a2(n)^2+b2(n));
r22(n)=20*log10(abs(x2(n)));
max_x2=max(r2);
if(r22(n)<=max_x2-30 && r22(n)>=(min_x2))
    
   high_att2(n)=k;
else
    high_att2(n)=0;
end
k=k+5;
n=n+1;
end

subplot(3,4,8)
semilogx(high_att2,r22)

title('high Attinuation')
xlabel('frequency')
ylabel('magnitude')

%--------------------------------
% Part C)
a2=w*j;
b2=160*w*j+1000;

%since it will be a matrix opperation, there should be the same size as a2
%and b2 matrices
for i=1:600
c2(i)=10000;
end

x2= c2./(a2.^2+b2);
%magnitude vs frequency

r2=20*log10(abs(x2));
subplot(3,4,9);
semilogx(w,r2);
title('Magnitude vs Frequency')
xlabel('frequency')
ylabel('magnitude')
%phase vs frequency
subplot(3,4,10);
semilogx(w,angle(x2));

title('Angle vs Frequency')
xlabel('frequency')
ylabel('angle')

%low att
k=0.5; 
low_att2=0;
n=1;
max_x2=max(r2);
min_x2=min(r2);
while(k<=3000)

x2(n)= c2(n)/(a2(n)^2+b2(n));
r22(n)=20*log10(abs(x2(n)));

if(r22(n)<=max_x2 && r22(n)>=(max_x2-20))
    
    low_att2(n)=k;
else
    low_att2(n)=0;
end
k=k+5;
n=n+1;
end

subplot(3,4,11)
semilogx(low_att2,r22)

title('Low Attinuation')
xlabel('frequency')
ylabel('magnitude')

k=0.5; 
high_att2=0;
n=1;
while(k<=3000)

x2(n)= c2(n)/(a2(n)^2+b2(n));
r22(n)=20*log10(abs(x2(n)));
max_x2=max(r2);
if(r22(n)<=max_x2-30 && r22(n)>=(min_x2))
    
   high_att2(n)=k;
else
    high_att2(n)=0;
end
k=k+5;
n=n+1;
end

subplot(3,4,12)
semilogx(high_att2,r22)

title('high Attinuation')
xlabel('frequency')
ylabel('magnitude')

%
