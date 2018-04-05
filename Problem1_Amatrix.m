% Problem1_Amatrix.m
% Peter Ferrero, Oregon State University, 3/13/2018, MTH 552, Homework 8
% A function to calculate the boundary conditions.

function A = Problem1_Amatrix(n_interior,order,type)

if type == 'Dirichlet'

    row_ndx = [2:n_interior, 1:n_interior, 1:n_interior-1]';
    col_ndx = [1:n_interior-1, 1:n_interior, 2:n_interior]';
    values = zeros(n_interior+2*(n_interior-1),1);
    values(1:n_interior-1) = -1;
    values(n_interior:2*n_interior-1) = 2;
    values(2*n_interior:3*n_interior-2) = -1;
    values(2*n_interior) = 0;
    values(n_interior) = 1;
    values(2*n_interior-1) = 1;
    values(n_interior-1) = 0;

    A = sparse(row_ndx,col_ndx,values);
    
else
    
    if order == '1st'
        
        
        
    else
        
        
        
    end
    
    
    
end

end