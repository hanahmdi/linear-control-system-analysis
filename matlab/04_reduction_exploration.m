%% Inspect candidate pole/zero cancellations (do not force reduction)
run(fullfile(fileparts(mfilename('fullpath')), 'model_parameters.m'));
disp('Zeros:'); disp(zero(ClosedLoop));
disp('Poles:'); disp(pole(ClosedLoop));
% Use minreal() only with a justified tolerance. Check approximation error.
Candidate = minreal(ClosedLoop, 1e-3);
t = linspace(0, 15, 1500);
[y,t] = step(ClosedLoop,t); yr = step(Candidate,t);
fprintf('Maximum step deviation: %.6g\n',max(abs(y(:)-yr(:))));
figure; plot(t,y,'LineWidth',1.5); hold on;
plot(t,yr,'--','LineWidth',1.5); grid on;
legend('Full model','minreal candidate'); xlabel('Time (s)');
