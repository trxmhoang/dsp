// Ex 7.2
clc; clear;

xn = [1; 2; -3; 2; 1];
hn = [1, 0, -1, -1, 1];
N = length(xn);

H = zeros(N, N);
for row = 1:N
    for col = 1:N
        idx = pmodulo(row - col, N);
        H(row, col) = hn(idx + 1);
    end
end

yn_matrix = H * xn;

disp("Circulant matrix H:");
disp(H);
disp("Circular convolution result (Matrix method):");
disp(yn_matrix');

n_axis = 0 : N-1;
scf(0); clf();
plot(n_axis, yn_matrix', 'bo-'); e = gce(); e.children.thickness = 2;
xtitle("Circular convolution y(n) by Matrix method", "n", "y(n)"); 
xgrid(1);
