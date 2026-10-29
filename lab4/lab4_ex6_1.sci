// Ex 6.1
clc; clear;

xn = [1, 2, -3, 2, 1];
hn = [1, 0, -1];

nx = 0 : length(xn)-1;
nh = 0 : length(hn)-1;

yn = convol(hn, xn);
ny = 0 : length(yn)-1;

disp("Linear convolution result (Folding and Shifting):");
disp(yn);

scf(0); clf();
subplot(3,1,1);
plot2d3(nx, xn, 5); e = gce(); e.children.thickness = 2;
plot(nx, xn, 'ro'); e = gce(); e.children.thickness = 2;
xtitle("Input signal x(n)", "n", "x(n)"); xgrid(1);

subplot(3,1,2);
plot2d3(nh, hn, 3); e = gce(); e.children.thickness = 2;
plot(nh, hn, 'go'); e = gce(); e.children.thickness = 2;
xtitle("Impulse response h(n)", "n", "h(n)"); xgrid(1);

subplot(3,1,3);
plot2d3(ny, yn, 2); e = gce(); e.children.thickness = 2;
plot(ny, yn, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("Convolution signal y(n)", "n", "y(n)"); xgrid(1);
