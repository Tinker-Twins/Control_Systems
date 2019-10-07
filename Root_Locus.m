 %% Root Locus
 
 % Example Transfer Function: 
 %      1
 % -------------
 % (s^3+5s^2+6s)

fprintf('Enter Transfer Function Coefficients\n');
TF_Numerator = input('Enter Numerator Coefficients:'); % Use array syntax to enter multiple values
TF_Denominator = input('Enter Denominator Coefficients:'); % Use array syntax to enter multiple values
System = tf(TF_Numerator,TF_Denominator); % System transfer function
figure('NumberTitle', 'off', 'Name', 'Root Locus');
rlocus(System); % Root locus
