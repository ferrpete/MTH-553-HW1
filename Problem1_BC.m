% Problem1_BC.m
% Peter Ferrero, Oregon State University, 3/13/2018, MTH 552, Homework 8
% A function to calculate the boundary conditions.

function f = Problem1_BC(f,a,b,h,source,order,type)

if source == '1'
    
    if string(type) == string('Dirichlet')

        f(1) = exp(a);
        f(end) = exp(b);
        
    else
        
        if string(order) == string('1st')
        
            f(1) = exp(a);
            f(end) = h*exp(b);
            
        else
            
            f(1) = exp(a);
            f(end) = f(end) + 2*h*exp(b);
        end
        
    end
    
else
    
    if string(type) == string('Dirichlet')
        
        f(1) = sin(pi*a);
        f(end) = sin(pi*b);
        
    else
        
        if string(order) == string('1st')
        
            f(1) = sin(pi*a);
            f(end) = h*pi*cos(pi*b);
            
        else
            
            f(1) = sin(pi*a);
            f(end) = f(end) + 2*h*pi*cos(pi*b);
            
        end
        
    end
    
end

end