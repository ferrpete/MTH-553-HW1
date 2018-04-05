% Problem1_BC.m
% Peter Ferrero, Oregon State University, 3/13/2018, MTH 552, Homework 8
% A function to calculate the boundary conditions.

function f = Problem1_BC(f,a,b,source,type)

if source == '1'
    
    if type == 'Dirichlet'

        f(1) = exp(a);
        f(end) = exp(b);
        
    else
        
        f(1) = 0;
        f(end) = 0;
        
    end
    
else
    
    if type == 'Dirichlet'
        
        f(1) = sin(pi*a);
        f(end) = sin(pi*b);
        
    else
        
        f(1) = 0;
        f(end) = 0;
        
    end
    
end

end