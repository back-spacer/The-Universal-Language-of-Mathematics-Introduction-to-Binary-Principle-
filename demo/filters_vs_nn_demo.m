% Part 1: FIR filter design and application
b = fir1(20,0.3); % 20th order lowpass filter
x = randn(1,1000); % White noise
y = filter(b,1,x); % Apply filter

figure;
plot([x(1:200)' y(1:200)']);
legend('Original','Filtered');
title('FIR Filter Output');

% Part 2: Convolution (NN-style filter)
w = randn(1,21); % Random weights
y2 = conv(x,w,'same'); % Convolution

figure;
plot([x(1:200)' y2(1:200)']);
legend('Input','NN Convolution');
title('Conv Output');
