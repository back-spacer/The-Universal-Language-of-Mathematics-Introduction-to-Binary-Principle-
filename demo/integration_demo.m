%% 1. Lebesgue vs Riemann Integration
function integration_demo()
    f = @(x) exp(-x.^2);
    a = 0; b = 3; N = 1000;
    x = linspace(a,b,N); dx = (b-a)/N;
    riemann_sum = sum(f(x))*dx;
    y = f(x); levels = linspace(0,max(y),N); dy = levels(2)-levels(1);
    lebesgue_sum = sum(arrayfun(@(l) sum(y>=l)*dx, levels))*dy;
    disp(['Riemann approx: ', num2str(riemann_sum)]);
    disp(['Lebesgue approx: ', num2str(lebesgue_sum)]);
end
