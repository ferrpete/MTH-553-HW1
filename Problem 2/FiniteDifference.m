% FiniteDifference.m
% Peter Ferrero, Oregon State University, 4/5/2018, MTH 553 HW1
% A function to compute the finite difference for Poisson's equation with
% various source terms and boundary conditions

function [h, u, x] = FiniteDifference(epsilon,n,a,b,type)

    x = [linspace(a,b,n)]';
    h = x(2)-x(1);
    dX2 = h^2;
    n_interior = length(x);
    
    A = Problem2_Amatrix(epsilon,h,n_interior,type);
    
    f = Problem2_RHS(x,h,type);
    f = Problem2_BC(f);
    
    u = zeros(length(x),1);
    u(1:end) = A\f;

end