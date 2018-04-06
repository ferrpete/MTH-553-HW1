% Problem2_Main.m
% Peter Ferrero, Oregon State University, 4/5/2018, MTH 553 HW1
% A program to calculate Poisson's equation for various boundary condition
% schemes and source terms

n = [7,128,256,512,1024];
% n = [61,512,1024,2048,4096];
N = length(n);
a = 0;
b = 1;

epsilon = 0.1;

u = cell(N,1);
x = cell(N,1);
ue = cell(N,1);

for i=1:N

    type = 'Two-Side';
    [h(i),u{i},x{i}] = FiniteDifference(epsilon,n(i),a,b,type);
    ue{i} = Problem2_Exact(epsilon,x{i});

end

Problem2_Plotter(n,h,u,ue,x);

figure
plot(x{1},u{1},'kx',x{1},ue{1},'r--')
xlabel('Position, x')
ylabel('u(x)')
legend('Finite Difference','Exact')
legend('location','southeast')