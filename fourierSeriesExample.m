close all
clear all

f=2; %input wave freq
A=1; %input wave aplitude
tw=1;%time of wave sample(seconds)
[t,y]=squareWave(f,A,tw);



%fourier coffecients
a0=A/2;
n=20; %number of fourier series required

sum=zeros(1,length(t));
sum=sum+a0;
  figure(2);
  plot(t,y);
       hold on
       
for k=1:n

    An=-(2*A/(2*pi*k))*(cos(k*pi)-1);
    y1=An*sin(2*pi*k*t*f);
     sum=sum+y1;
   figure(2);
   %  plot (t,y1)
     hold on
     plot(t,sum);
end

figure(3)
plot(t,y);
       hold on
     plot (t,sum)



