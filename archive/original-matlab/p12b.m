clc
clear all
close all

num=[21.45 793.7];
den=[1 44.87 344.7 2148 7034];
G=tf(num,den);
[mag, phase, omega] = bode(G); 
mag_dB = 20*log10(squeeze(mag));
index_3dB = find(mag_dB <= max(mag_dB)-3, 1); 
bandwidth_frequency = omega(index_3dB);
disp('W(Bw) ');
disp(bandwidth_frequency);