% Problem1_Plotter.m
% Peter Ferrero, Oregon State University, 3/13/2018, MTH 552, Homework 8
% A function to calculate the convergence plots for Problem 1.

function Problem1_Plotter(n,h,u,ue,x)

N = length(h);
a = x{1}(1);
b = x{1}(end);

for i=1:N

    MaxError(i) = max(abs(u{i}-ue{i}));
    L2Error(i) = sqrt(Simpson13FastApprox(n(i),a,b,(u{i}-ue{i}).^2));
    
end

figure
loglog(h,h.^2,'k-',h,MaxError,'r*-',h,L2Error,'b*-')
xlabel('Stepsize, h')
ylabel('Grid Norm')
legend('Quadratic','L^{\infty}','L^2')
legend('location','southeast')
axis([-inf,inf,-inf,inf])

end