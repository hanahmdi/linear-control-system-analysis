clc
clear all
close all

s=tf('s');
num=(21.45*s + 793.7);
den=(s^4 + 44.87*s^3 + 344.7*s^2 + 2169*s + 7828);
T=num/den;
info=stepinfo(T)
step(T)
grid on