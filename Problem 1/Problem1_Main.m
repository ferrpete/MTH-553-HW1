% Problem1_Main.m
% Peter Ferrero, Oregon State University, 4/5/2018, MTH 553 HW1
% A program to calculate Poisson's equation for various boundary condition
% schemes and source terms

n = [64,128,256,512,1024];
N = length(n);
a = 0;
b = 1;

u = cell(N,1);
x = cell(N,1);
ue = cell(N,1);

for i=1:N

    source = '2';
    order = '2nd';
    type = 'Neumann';
    [h(i),u{i},x{i}] = PoissonFiniteDifference(n(i),a,b,source,order,type);
    ue{i} = Problem1_Exact(x{i},source);

end

Problem1_Plotter(n,h,u,ue,x);

figure
plot(x{1},u{1},'kx',x{1},ue{1},'r--')
xlabel('Position, x')
ylabel('u(x)')
legend('Finite Difference','Exact')
legend('location','southeast')