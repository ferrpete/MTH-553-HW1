% Problem2_RHS.m
% Peter Ferrero, Oregon State University, 3/13/2018, MTH 552, Homework 8
% A function to calculate the source function f for Problem 2.

function f = Problem2_RHS(x,h,type)

if string(type) == "Upwind"

    f = h^2*ones(length(x),1);
    
elseif string(type) == "Downwind"
    
    f = h^2*ones(length(x),1);
    
else
    
    f = 2*h^2*ones(length(x),1);
    
end

end