clc
clear all
close all

num=[21.45 793.7];
den=[1 44.87 344.7 2148 7034];
G=tf(num,den);
[GM, PM, Wcg, Wcp] = margin(G);
disp('(Gain Margin):');
disp(GM);

disp('(Gain Margin Frequency):');
disp(Wcg);

disp('(Phase Margin):');
disp(PM);

disp('(Phase Margin Frequency):');
disp(Wcp);
bode(G)