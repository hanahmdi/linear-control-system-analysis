%% Study gain sensitivity without claiming requirements are met
run(fullfile(fileparts(mfilename('fullpath')), 'model_parameters.m'));
K = [0.5 1 2 4 8];
figure; hold on;
for k = K
  T = feedback(k*EquivalentUnityLoop,1);
  step(T, 15);
end
grid on; legend(compose('K = %.1f',K));
title('Gain sensitivity');
