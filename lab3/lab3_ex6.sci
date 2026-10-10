// Ex 3.6
clc;
clear;

function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = clean(convol(hn, xn));
    yorigin = xorigin + horigin - 1;
    
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    
    clf();
    
    subplot(3, 1, 1);
    plot2d3(nx, xn, 5); e = gce(); e.children.thickness = 2;
    plot(nx, xn, 'ro'); e = gce(); e.children.thickness = 2;
    xtitle("Input signal x(n)", "n", "x1(n)");
    xgrid(1);
    
    subplot(3, 1, 2);
    plot2d3(nh, hn, 3); e = gce(); e.children.thickness = 2;
    plot(nh, hn, 'go'); e = gce(); e.children.thickness = 2;
    xtitle("Signal characteristic h(n)", "n", "h(n)");
    xgrid(1);
    
    subplot(3, 1, 3);
    plot2d3(ny, yn, 2); e = gce(); e.children.thickness = 2;
    plot(ny, yn, 'bo'); e = gce(); e.children.thickness = 2;
    xtitle("Output signal y(n) = x1(n) * h(n)", "n", "y(n)");
    xgrid(1);
endfunction

// Function execution
xn = [1, 2, 1];
xorigin = 1;
hn = [1, -1, 1];
horigin = 2;

disp("Test convolution function:");
[yn, yorigin] = convolution(xn, xorigin, hn, horigin);
disp("yn = [" + strcat(string(yn), ", ") + "]");
disp("yorigin = " + string(yorigin));
