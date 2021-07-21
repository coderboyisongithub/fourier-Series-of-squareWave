function [t,y] = squareWave(freq,A,waveTime)
%This function generates square Wave of frequency 'freq' amplitude 'A' and of duration 'waveTime'
%written By Shivanshu Raj
% student of Computer Science and Eng. SRM University,Amravati,




%parameters%

tt=waveTime;%sec
f=freq; %hz
tp=1/f;
fs=20000*f;
%%sample in one period.
n1=tp*fs;
t=0:1/fs:(n1-1)/fs;
y1=zeros(1,n1);
y1(1:n1/2)=A;
%y1((n1/2)+1:end)=-A
%plot(t,y1);

n2=tt*fs
nw=tt/tp
t2=0:1/fs:(n2-1)/fs;
y2=zeros(1,n2);

y2=repmat(y1,1,nw);
figure;
subplot(211)
plot(t,y1);
grid on
xlabel('time');
ylabel('A');
axis([0,t(end),0,1.5*A]);
title('one period of wave..');
%%
subplot(212);
plot(t2,y2);
grid on
xlabel('time');
ylabel('A');
axis([0,t2(end),-1.5*A,1.5*A]);
title('square wave');

%%
y=y2;
t=t2;


end

