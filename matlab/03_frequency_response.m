%% Frequency-response analysis of equivalent open-loop plant
run(fullfile(fileparts(mfilename('fullpath')), 'model_parameters.m'));
figure; margin(EquivalentUnityLoop); grid on;
figure; nyquist(EquivalentUnityLoop); grid on;
[GM,PM,Wcg,Wcp] = margin(EquivalentUnityLoop);
fprintf('Gain margin: %.6g | phase margin: %.6g deg\n',GM,PM);
fprintf('Phase crossover: %.6g rad/s | gain crossover: %.6g rad/s\n',Wcg,Wcp);
% bandwidth() applies to the CLOSED-loop transfer function.
fprintf('Closed-loop bandwidth: %.6g rad/s\n',bandwidth(ClosedLoop));
