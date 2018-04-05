% PoissonFiniteDifference.m
% Peter Ferrero, Oregon State University, 4/5/2018, MTH 553 HW1
% A function to compute the finite difference for Poisson's equation with
% various source terms and boundary conditions

function [h, u, x] = PoissonFiniteDifference(n,a,b,source,order,type)

    x = linspace(a,b,n);
    h = x(2)-x(1);
    dX2 = h^2;
    n_interior = length(x);
    
    A = Problem1_Amatrix(n_interior,order,type);
    
    f = dX2.*Problem1_RHS(x',source);
    f = Problem1_BC(f,a,b,source,type);
    
    u = zeros(length(x),1);
    u(1:end) = A\f;
    
%     u_true = Problem2a_Exact(x',type);

end