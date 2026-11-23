%% Step-response analysis for exact plant and closed-loop models
run(fullfile(fileparts(mfilename('fullpath')), 'model_parameters.m'));
figure; step(Plant, ClosedLoop); grid on;
legend('Open-loop plant', 'Closed-loop K=1');
disp('Plant metrics:'); disp(stepinfo(Plant));
disp('Closed-loop metrics:'); disp(stepinfo(ClosedLoop));
fprintf('Plant DC gain: %.6g\n', dcgain(Plant));
fprintf('Closed-loop DC gain: %.6g\n', dcgain(ClosedLoop));
