clc
clear all
close all

num=[21.45 793.7];
den=[1 44.87 344.7 2148 7034];
G=tf(num,den);
nyquist(G)