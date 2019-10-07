%% Linear Quadratic Regulator

% Spring-Mass-Damper System

% System Parameters
m = 1;
b = 0.2;
k = 3;

% System Dynamics
A = [0 1; -k/m -b/m];
B = [0; 1];
C = [1 0; 0 1];
D = 0;

% Control Law
Q = [100 0; 0 10];      % Penalize State (Position) Error
R = 2;                  % Penalize Input (Velocity) Error

% Compute LQR Gains
K = lqr(A,B,Q,R);          % LQR Gain Matrix is a (m*n) matrix where (m = no. of states), (n = no. of inputs)

State_Space = ss(A-B*K, B, C, D);

Initial_Condition = [2, 1];   % [Position, Velocity] --> [State, Input]
t = 0 : 0.01 : 5;

[y, t, x] = initial(State_Space, Initial_Condition, t);

figure('Name','System Response','NumberTitle','off','windowState','Maximized');
plot(t, x(:,1));
hold on;
plot(t, x(:,2));
ylabel('State','FontSize',10);
xlabel('Time','FontSize',10);
title('System Response','FontSize',14);
legend('Position','Velocity');
