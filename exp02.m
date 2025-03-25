%Exp02 - Generating a Square Wave and Triangular Waves using sine waves 
% 25-03-25
% Kinshuk Pandala

clear;close;clc;

%t=0:0.1:10;
t=0:0.1:15;

y = zeros(size(t)); %take the same sample lenght as time domain t
%y = sin(t);
%y = sin(t)+sin(3*t)/3+sin(5*t)/5+sin(7*t)/7+sin(9*t)/9+sin(11*t)/11;

% adding odd harmonics in for loop to generate Square Wave
for k = 1:2:400
    y = y + sin(k*t) / k;
end
subplot(311)
plot(y)
xlabel('Time');
ylabel('Amplitude');
title('Sqaure Wave');
y2 = y;

% adding even harmonics in for loop to generate Triangular Wave  
for k = 2:2:400  
    y = y + sin(k * t) / k;  
end 
subplot(312)
plot(y)
xlabel('Time');
ylabel('Amplitude');
title('Triangular Wave');
y1 = y;

subplot(313)
plot(t,y1,t,y2)