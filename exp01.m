%Exp01 - Plotting a continuous signal in Time & Frequency Domain 
% 25-03-25
% Kinshuk Pandala

clear;close;clc;

freq = input('Enter the frequency of the continuous signal:');
N = input('Enter the Number of cycles:');

fs = 10*freq;
%fs = 5*freq;
%fs = 100*freq;
Tp = 1/freq;

t=0:1/fs:N*Tp;

Amp = 2;
%y= Amp*sin(2*pi*freq*t);
y = Amp*sin(2*pi*freq*t)+sin(2*pi*2*freq*t);
subplot(211)
plot(t,y);

%plotting the frequuency of the signal 

len = length(y);

%linspace in MATLAB creates a set of numbers that are evenly spaced between a start and an end value.
l = linspace(-fs/2,fs/2,len); 

yf = fftshift(fft(y));
subplot(212)
plot(l,abs(yf)); %abs stands for absolute values



%input for frequency is 1000
%input of number of cycles is 10





