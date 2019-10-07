%% PID Controller

% Example Transfer Function: 
%      1
% -------------
% (s^3+5s^2+6s)

fprintf('Enter Transfer Function Coefficients\n');
TF_Numerator = input('Enter Numerator Coefficients:'); % Use array syntax to enter multiple values
TF_Denominator = input('Enter Denominator Coefficients:'); % Use array syntax to enter multiple values

G = tf(TF_Numerator,TF_Denominator) % Open loop transfer function 'G(S)'
H = 1; % Feedback gain 'H(S)'

Kp = 15;
Ki = 0.1;
Kd = 8;

C = pid(Kp,Ki,Kd); % PID controller
F = feedback(C*G,H) % Closed loop transfer function

figure('NumberTitle', 'off', 'Name', 'PID Controller');
step(F);

grid on
