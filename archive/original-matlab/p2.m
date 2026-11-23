clc
clear all
close all

s=tf('s');
num1=39;
den1=(s^2+2*0.23*(39^0.5)*s+39);
P=num1/den1;
num2=0.55;
den2=(s+5);
Ac=num2/den2;
num3=28.6;
den3=(s+37);
Se=num3/den3;
C=1;
G=(C*Ac*P);
T=feedback(G,Se)
