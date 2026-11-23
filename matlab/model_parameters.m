%% Exact model parameters from student-specific assignment
% For ID 401411039: a = 23 (digit sum), b = 39 (last two digits).
a = 23; b = 39;
omega_n = sqrt(b);
zeta = 0.01 * a;
s = tf('s');
Plant = b / (s^2 + 2*zeta*omega_n*s + b);
Actuator = 0.55 / (s + 5);
Sensor = 28.6 / (s + 37);
Forward = Actuator * Plant;
ClosedLoop = feedback(Forward, Sensor); % K = 1, negative feedback
EquivalentUnityLoop = minreal(ClosedLoop/(1-ClosedLoop));
