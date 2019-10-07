%% Bode Plot

% Example Transfer Function
%      1
% -----------
% s(s+1)(s+2)

z=input('Enter Zeros:'); % Use array syntax to enter multiple values | Press enter if TF has purely constant numerator
p=input('Enter Poles:'); % Use array syntax to enter multiple values
k=input('Enter Gain:'); % Enter 1 for no added gain
System = zpk(z,p,k);
figure('NumberTitle', 'off', 'Name', 'Bode Plot');
%bode(System); % Bode plot
margin(System); % Bode plot with margins and crossover frequencies
