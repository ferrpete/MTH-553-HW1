% Problem1_Main.m
% Peter Ferrero, Oregon State University, 4/5/2018, MTH 553 HW1
% A program to calculate Poisson's equation for various boundary condition
% schemes and source terms

N = [8,16,32,64,128];
a = 0;
b = 1;

[h,u,x] = PoissonFiniteDifference(N(5),a,b,'1','1st','Dirichlet');

plot(x,u)