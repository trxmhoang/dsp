// Ex 3.2
clc;
clear;

function [yn, yorigin] = advance(xn, xorigin, k)
    if k <= 0 then
        error("Error: k must be greater than 0");
    end

    yn = xn;
    yorigin = xorigin + k;
    
    nx = (1:length(xn)) - xorigin;
    ny = nx - k;
    
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
    xtitle("Advanced signal y(n) = x(n + " + string(k) + ")", "n", "y(n)");
    xgrid(1);
endfunction

// Function execution
xn = [1, -2, 3, 6];
xorigin = 3;
k1 = 1;
k2 = -1;

disp("Example 1: Valid k");
[yn, yorigin] = advance(xn, xorigin, k1);
disp("yn = [" + strcat(string(yn), ", ") + "]");
disp("yorigin = " + string(yorigin));

disp("Example 2: Invalid k");
[yn, yorigin] = advance(xn, xorigin, k2);
