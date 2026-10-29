// Ex 7.3
clc; clear;

xn = [1, 2, -3, 2, 1];
hn = [1, 0, -1, -1, 1];
N = length(xn);

H = zeros(N, N);
for row = 1:N
    for col = 1:N
        H(row, col) = hn(pmodulo(row - col, N) + 1);
    end
end
yn = (H * xn')';

Ex = sum(xn.^2);
Ey = sum(yn.^2);

disp("Energy of x(n) = " + string(Ex));
disp("Energy of y(n) = " + string(Ey));

n_axis = 0 : N-1;
scf(0); clf();

subplot(3,1,1);
plot(n_axis, xn, 'ro-'); e = gce(); e.children.thickness = 2;
xtitle("Input signal x(n)", "n", "x(n)"); xgrid(1);

subplot(3,1,2);
plot(n_axis, yn, 'bo-'); e = gce(); e.children.thickness = 2;
xtitle("Circular Convolution y(n)", "n", "y(n)"); xgrid(1);

subplot(3,1,3);
bar([1, 2], [Ex, Ey], 0.5, 'green');
xtitle("Signal Energy", "Signal", "Energy");
xstring(0.9, Ex + 2, "E_x = " + string(Ex));
xstring(1.9, Ey + 2, "E_y = " + string(Ey));
xgrid(1);
