%% Root locus of an equivalent unity-feedback loop
run(fullfile(fileparts(mfilename('fullpath')), 'model_parameters.m'));
figure; rlocus(EquivalentUnityLoop); grid on;
title('Root locus of equivalent unity-feedback open loop');
% Root locus with damping-ratio zeta=0.5 guideline; not a vertical Re(s)=0.5 line.
sgrid(0.5, []);
% Check stability for a numerical range of gains without assuming an exact boundary.
K = linspace(0.001, 50, 1000);
stable = false(size(K));
for i=1:numel(K)
    stable(i)=isstable(feedback(K(i)*EquivalentUnityLoop,1));
end
fprintf('Stable samples: %d of %d\n', sum(stable), numel(K));
