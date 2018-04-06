% Problem1_RHS.m
% Peter Ferrero, Oregon State University, 3/13/2018, MTH 552, Homework 8
% A function to calculate the source function f for Problem 1.

function f = Problem1_RHS(x,source)

if string(source) == string('1')

    f = -exp(x);
    
else
    
    f = pi^2*sin(pi*x);
    
end

end