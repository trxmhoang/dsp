// Ex 6.3
clc; clear;

xn = [1, 2, -3, 2, 1];
hn = [1, 0, -1];
yn = convol(hn, xn);

nx = 0 : length(xn)-1;
ny = 0 : length(yn)-1;

Ex = sum(xn.^2);
Ey = sum(yn.^2);

disp("Energy of x(n) = " + string(Ex));
disp("Energy of y(n) = " + string(Ey));

scf(0); clf();
subplot(3,1,1);
plot(nx, xn, 'ro-'); e = gce(); e.children.thickness = 2;
xtitle("Input signal x(n)", "n", "x(n)"); xgrid(1);

subplot(3,1,2);
plot(ny, yn, 'bo-'); e = gce(); e.children.thickness = 2;
xtitle("Convolution signal y(n)", "n", "y(n)"); xgrid(1);

subplot(3,1,3);
bar([1, 2], [Ex, Ey], 0.5, 'green');
xtitle("Signal Energy", "Signal", "Energy");
xstring(0.9, Ex + 2, "E_x = " + string(Ex));
xstring(1.9, Ey + 2, "E_y = " + string(Ey));
xgrid(1);
