%% 2. Lagrange Multipliers (Economics & Engineering)
%you may prefer to run each block separtly
% Economics: Utility maximization (runs in Matlab)
syms x y lambda
U = sqrt(x)*sqrt(y); px=2; py=1; Income=100;
L = U + lambda*(Income - px*x - py*y);
eqs = [diff(L,x)==0, diff(L,y)==0, diff(L,lambda)==0];
sol = solve(eqs,[x,y,lambda]); disp(sol);

% Engineering: Minimize x^2+y^2 subject to x+y=1
f = x^2 + y^2;
L = f + lambda*(1 - x - y);
eqs = [diff(L,x)==0, diff(L,y)==0, diff(L,lambda)==0];
sol = solve(eqs,[x,y,lambda]); disp(sol);
