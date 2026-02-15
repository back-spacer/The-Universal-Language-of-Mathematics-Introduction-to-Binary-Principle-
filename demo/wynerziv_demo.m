% Wyner-Ziv coding demo with Laplacian source and Gaussian noise:
%This code functions as a demonstration of side information usage to reduce distortion
N = 10000;

% Laplacian source
mu = 0; b = 1; % mean and scale
u = rand(N,1) - 0.5;
x = mu - b*sign(u).*log(1 - 2*abs(u));

% Side information: Gaussian noise added
sigma = 0.5;
y = x + sigma*randn(N,1);

% Quantization (encoder)
levels = -5:0.5:5;
[~,idx] = min(abs(x - levels'),[],2);
xq = levels(idx);

% Decoder scenarios
% 1. No side info
recon1 = xq;

% 2. With side info (simple fusion)
recon2 = (xq + y)/2;

% 3. Ideal side info (perfect correlation)
recon3 = y;

% Distortion comparison
mse1 = mean((recon1 - x).^2);
mse2 = mean((recon2 - x).^2);
mse3 = mean((recon3 - x).^2);

disp(['MSE no side info: ', num2str(mse1)]);
disp(['MSE with noisy side info: ', num2str(mse2)]);
disp(['MSE with perfect side info: ', num2str(mse3)]);


% Wyner-Ziv style compression demo
%demonstrating basic scalar quantization and Fusion with side information
N = 1000;
x = randn(N,1); % source signal
noise = 0.5*randn(N,1);
y = x + noise; % side information at decoder

% Encoder - Corrected quantization approach
levels = -2:0.5:2;
% Using discretize to map x to nearest index or value
[~, idx] = min(abs(x - levels'), [], 1);
xq = levels(idx)'; 

% Decoder reconstructs using side information
recon = (xq + y)/2; % Simple fusion rule

% Calculate MSE
mse_no_side = mean((xq - x).^2);
mse_with_side = mean((recon - x).^2);

disp(['MSE without side info: ', num2str(mse_no_side)]);
disp(['MSE with side info: ', num2str(mse_with_side)]);
