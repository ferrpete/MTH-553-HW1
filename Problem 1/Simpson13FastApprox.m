% Simpson13FastApprox.m
% Peter Ferrero, Oregon State University
% This is a code to employ the vectorized 1/3 Simpson's composite rule.
% For integrand vectors with many entries, the code is up to 10 times faster 
% than using a for loop.
% ===Inputs=== n - the number of intervals to integrate
%              a - the left integral bound
%              b - the right integral bound
%              Integrand - the discrete vector of values to integrate over
% ===Output=== approx - the integral approximation

function [approx] = Simpson13FastApprox(n, a, b, Integrand)

h = (b-a)/n; % Interval length
A = h/3;
B = 2*A;
C = 4*A;

approx = zeros(n+1,1);
approx(3:2:n) = B*Integrand(3:2:n);
approx(2:2:n) = C*Integrand(2:2:n);
approx(1) = A*Integrand(1);
approx(end) = A*Integrand(end);

approx = sum(approx);

end