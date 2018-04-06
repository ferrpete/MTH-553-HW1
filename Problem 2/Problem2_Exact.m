% Problem2_Exact.m
% Peter Ferrero, Oregon State University, 3/13/2018, MTH 552, Homework 8
% A function to calculate the exact solution for Problem 2.

function u = Problem2_Exact(epsilon,x)

u = x - ((exp(x./epsilon) - 1)./(exp(1/epsilon) - 1));

end