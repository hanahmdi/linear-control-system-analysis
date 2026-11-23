clc
clear all
close all

s=tf('s');
num1=39;
den1=(s^2+2*0.23*(39^0.5)*s+39);
P=num1/den1
info=stepinfo(P)
step(P)
grid on