% Problem2_Amatrix.m
% Peter Ferrero, Oregon State University, 3/13/2018, MTH 552, Homework 8
% A function to calculate the boundary conditions.

function A = Problem2_Amatrix(epsilon,h,n_interior,type)

if string(type) == "Upwind"

    row_ndx = [2:n_interior, 1:n_interior, 1:n_interior-1]';
    col_ndx = [1:n_interior-1, 1:n_interior, 2:n_interior]';
    values = zeros(n_interior+2*(n_interior-1),1);
    values(1:n_interior-1) = -(epsilon + h);
    values(n_interior:2*n_interior-1) = 2*epsilon + h;
    values(2*n_interior:3*n_interior-2) = -epsilon;

    A = sparse(row_ndx,col_ndx,values);
    
elseif string(type) == "Downwind"
    
    row_ndx = [2:n_interior, 1:n_interior, 1:n_interior-1]';
    col_ndx = [1:n_interior-1, 1:n_interior, 2:n_interior]';
    values = zeros(n_interior+2*(n_interior-1),1);
    values(1:n_interior-1) = -epsilon;
    values(n_interior:2*n_interior-1) = 2*epsilon - h;
    values(2*n_interior:3*n_interior-2) = h - epsilon;

    A = sparse(row_ndx,col_ndx,values);
    
else
    
    row_ndx = [2:n_interior, 1:n_interior, 1:n_interior-1]';
    col_ndx = [1:n_interior-1, 1:n_interior, 2:n_interior]';
    values = zeros(n_interior+2*(n_interior-1),1);
    values(1:n_interior-1) = -(2*epsilon + h);
    values(n_interior:2*n_interior-1) = 4*epsilon;
    values(2*n_interior:3*n_interior-2) = h - 2*epsilon;
    
end

values(2*n_interior) = 0;
values(n_interior) = 1;
values(2*n_interior-1) = 1;
values(n_interior-1) = 0;

A = sparse(row_ndx,col_ndx,values);

end