clc
clear all
close all

s=tf('s');
num=(21.45*s + 793.7);
den=(s^4 + 44.87*s^3 + 344.7*s^2 + 2169*s + 7828);
T=num/den;
numn=0.155*(s+37);
denn=(s^2+7.4194*s+55.74);
Tn=num/den;
subplot(2,2,1)
step(T)
subplot(2,2,2)
step(Tn)