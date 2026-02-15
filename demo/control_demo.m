% Control Theory + Fixed vs Floating Point + Optimal Control
% Example: Linear Quadratic Regulator (LQR) for a simple system

% System dynamics: x' = Ax + Bu
A = [0 1; -1 -0.5];
B = [0; 1];

% Cost matrices
Q = eye(2);   % state cost
R = 0.1;      % control cost

% Optimal control gain (floating-point)
K_float = lqr(A,B,Q,R);

% Simulation parameters
dt = 0.01; T = 10;
x = [1; 0]; % initial state
traj_float = []; traj_fixed = [];

for t = 0:dt:T
    % Floating-point control
    u_float = -K_float*x;
    x = x + dt*(A*x + B*u_float);
    traj_float(end+1,:) = [t x'];
    
    % Fixed-point approximation (quantize to 2 decimals)
    u_fixed = round(u_float,2);
    x_fixed = round(x + dt*(A*x + B*u_fixed),2);
    traj_fixed(end+1,:) = [t x_fixed'];
end

% Plot comparison
plot(traj_float(:,1), traj_float(:,2),'b', traj_fixed(:,1), traj_fixed(:,2),'r--');
legend('Floating-point','Fixed-point');
xlabel('Time'); ylabel('State x1');
title('Optimal Control: Floating vs Fixed Point');
