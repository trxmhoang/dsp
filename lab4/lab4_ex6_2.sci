// Ex 6.2
clc; clear;

xn = [1; 2; -3; 2; 1];
hn = [1, 0, -1];

Nx = length(xn);
Nh = length(hn);
Ny = Nx + Nh - 1;

H = zeros(Ny, Nx);
for col = 1:Nx
    for row = 1:Nh
        H(row + col - 1, col) = hn(row);
    end
end

yn_matrix = H * xn;
ny = 0 : Ny-1;

disp("Convolution Matrix H:");
disp(H);
disp("Linear convolution result (Matrix method):");
disp(yn_matrix');

scf(0); clf();
plot2d3(ny, yn_matrix, 2); e = gce(); e.children.thickness = 2;
plot(ny, yn_matrix', 'bo'); e = gce(); e.children.thickness = 2;
xtitle("Convolution signal y(n) by matrix method", "n", "y(n)"); xgrid(1);
