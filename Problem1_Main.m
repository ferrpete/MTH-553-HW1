% Problem1_Main.m
% Peter Ferrero, Oregon State University, 4/5/2018, MTH 553 HW1
% A program to calculate Poisson's equation for various boundary condition
% schemes and source terms

n = [8,16,32,64,128];
N = length(n);
a = 0;
b = 1;

u = cell(N,1);
x = cell(N,1);
ue = cell(N,1);

for i=1:N

    source = '2';
    order = '1st';
    type = 'Neumann';
    [h(i),u{i},x{i}] = PoissonFiniteDifference(n(i),a,b,source,order,type);
    ue{i} = Problem1_Exact(x{i},source);

end

Problem1_Plotter(n,h,u,ue,x);