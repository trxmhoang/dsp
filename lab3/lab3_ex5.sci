// Ex 3.5
clc;
clear;

function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    
    ny = n_min:n_max;
    yorigin = 1 - n_min;
    
    y1 = zeros(1, length(ny));
    y2 = zeros(1, length(ny));
    
    y1(n1 - n_min + 1) = x1n;
    y2(n2 - n_min + 1) = x2n;
    
    yn = y1 .* y2;
    
    clf();
    
    subplot(3, 1, 1);
    plot2d3(n1, x1n, 5); e = gce(); e.children.thickness = 2;
    plot(n1, x1n, 'ro'); e = gce(); e.children.thickness = 2;
    xtitle("Signal x1(n)", "n", "x1(n)");
    xgrid(1);
    
    subplot(3, 1, 2);
    plot2d3(n2, x2n, 3); e = gce(); e.children.thickness = 2;
    plot(n2, x2n, 'go'); e = gce(); e.children.thickness = 2;
    xtitle("Signal x2(n)", "n", "x2(n)");
    xgrid(1);
    
    subplot(3, 1, 3);
    plot2d3(ny, yn, 2); e = gce(); e.children.thickness = 2;
    plot(ny, yn, 'bo'); e = gce(); e.children.thickness = 2;
    xtitle("Multiplied signal y(n) = x1(n) * x2(n)", "n", "y(n)");
    xgrid(1);
endfunction

// Function execution
x1n = [0, 1, 3, -2];
x1origin = 1;
x2n = [1, 1, 2, 3];
x2origin = 2;

disp("Test multi function:");
[yn, yorigin] = multi(x1n, x1origin, x2n, x2origin);
disp("yn = [" + strcat(string(yn), ", ") + "]");
disp("yorigin = " + string(yorigin));
