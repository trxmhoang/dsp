// Ex 3.3
clc;
clear;

function [yn, yorigin] = fold(xn, xorigin)
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;
    
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    clf();
    
    subplot(2, 1, 1);
    plot2d3(nx, xn, 5);
    e = gce(); e.children.thickness = 2;
    plot(nx, xn, 'ro');
    e = gce(); e.children.thickness = 2;
    xtitle("Original signal x(n)", "n", "x(n)");
    xgrid(1);
    
    subplot(2, 1, 2);
    plot2d3(ny, yn, 2);
    e = gce(); e.children.thickness = 2;
    plot(ny, yn, 'bo');
    e = gce(); e.children.thickness = 2;
    xtitle("Folded signal y(n) = x(-n)", "n", "y(n)");
    xgrid(1);
endfunction

// Function execution
xn = [1, -2, 3, 6];
xorigin = 3;

disp("Test fold function:");
[yn, yorigin] = fold(xn, xorigin);
disp("yn = [" + strcat(string(yn), ", ") + "]");
disp("yorigin = " + string(yorigin));
