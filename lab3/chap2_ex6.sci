// Ex 2.6
clc; clear;

n = -5:7;
xn = zeros(1, length(n));
xn(n >= 0 & n <= 3) = 1;
disp("Signal x(n):"); disp(xn);

function val = get_val(signal, time, target)
    val = zeros(1, length(target));
    for i = 1:length(target)
        idx = find(time == target(i));
        if ~isempty(idx) then
            val(i) = signal(idx);
        end
    end
endfunction

// Part b
yn_b = get_val(xn, n, n.^2);
yn_minus_2_b = get_val(yn_b, n, n - 2);
x2n = get_val(xn, n, n - 2);
y2n_b = get_val(x2n, n, n.^2);

disp("Part (b): y(n-2) vs y2(n)");
disp("y(n-2) = "); disp(yn_minus_2_b);
disp("y2(n) = "); disp(y2n_b);

figure(1); clf(); f = gcf(); f.background = 8;
subplot(5,1,1); plot2d3(n, xn, 5);  e = gce(); e.children.thickness = 2;
plot(n, xn, 'ro'); e = gce(); e.children.thickness = 2;
xtitle("(1) Input x(n)", "n", "Amplitude"); xgrid(1);
subplot(5,1,2); plot2d3(n, yn_b, 2); e = gce(); e.children.thickness = 2;
plot(n, yn_b, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("(2) Output y(n) = x(n^2)", "n", "Amplitude"); xgrid(1);
subplot(5,1,3); plot2d3(n, yn_minus_2_b, 3); e = gce(); e.children.thickness = 2;
plot(n, yn_minus_2_b, 'go'); e = gce(); e.children.thickness = 2;
xtitle("(3) Delayed Output y(n - 2)", "n", "Amplitude"); xgrid(1);
subplot(5,1,4); plot2d3(n, x2n, 5); e = gce(); e.children.thickness = 2;
plot(n, x2n, 'ro'); e = gce(); e.children.thickness = 2;
xtitle("(4) Delayed Input x2(n) = x(n - 2)", "n", "Amplitude"); xgrid(1);
subplot(5,1,5); plot2d3(n, y2n_b, 2); e = gce(); e.children.thickness = 2;
plot(n, y2n_b, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("(5) Output from Delayed Input y2(n) = x2(n^2)", "n", "Amplitude"); xgrid(1);

// Part c
yn_c = xn - get_val(xn, n, n - 1);
yn_minus_2_c = get_val(yn_c, n, n - 2);
y2n_c = x2n - get_val(x2n, n, n - 1);

disp("Part (c): y(n-2) vs y2(n)");
disp("y(n-2) = "); disp(yn_minus_2_c);
disp("y2(n) = "); disp(y2n_c);

figure(2); clf(); f = gcf(); f.background = 8;
subplot(5,1,1); plot2d3(n, xn, 5); e = gce(); e.children.thickness = 2;
plot(n, xn, 'ro');  e = gce(); e.children.thickness = 2;
xtitle("(1) Input x(n)", "n", "Amplitude"); xgrid(1);
subplot(5,1,2); plot2d3(n, yn_c, 2); e = gce(); e.children.thickness = 2;
plot(n, yn_c, 'bo');  e = gce(); e.children.thickness = 2;
xtitle("(2) Output y(n) = x(n) - x(n-1)", "n", "Amplitude"); xgrid(1);
subplot(5,1,3); plot2d3(n, yn_minus_2_c, 3); e = gce(); e.children.thickness = 2;
plot(n, yn_minus_2_c, 'go');  e = gce(); e.children.thickness = 2;
xtitle("(3) Delayed Output y(n - 2)", "n", "Amplitude"); xgrid(1);
subplot(5,1,4); plot2d3(n, x2n, 5); e = gce(); e.children.thickness = 2;
plot(n, x2n, 'ro'); e = gce(); e.children.thickness = 2;
xtitle("(4) Delayed Input x2(n) = x(n - 2)", "n", "Amplitude"); xgrid(1);
subplot(5,1,5); plot2d3(n, y2n_c, 2); e = gce(); e.children.thickness = 2;
plot(n, y2n_c, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("(5) Output from Delayed Input y2(n) = x2(n) - x2(n-1)", "n", "Amplitude"); xgrid(1);

// Part d
yn_d = n .* xn;
yn_minus_2_d = get_val(yn_d, n, n - 2);
y2n_d = n .* x2n;

disp("Part (d): y(n-2) vs y2(n)");
disp("y(n-2) = "); disp(yn_minus_2_d);
disp("y2(n) = "); disp(y2n_d);

figure(3); clf(); f = gcf(); f.background = 8;
subplot(5,1,1); plot2d3(n, xn, 5); e = gce(); e.children.thickness = 2; 
plot(n, xn, 'ro'); e = gce(); e.children.thickness = 2;
xtitle("(1) Input x(n)", "n", "Amplitude"); xgrid(1);
subplot(5,1,2); plot2d3(n, yn_d, 2); e = gce(); e.children.thickness = 2;
plot(n, yn_d, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("(2) Output y(n) = n*x(n)", "n", "Amplitude"); xgrid(1);
subplot(5,1,3); plot2d3(n, yn_minus_2_d, 3);  e = gce(); e.children.thickness = 2;
plot(n, yn_minus_2_d, 'go'); e = gce(); e.children.thickness = 2;
xtitle("(3) Delayed Output y(n - 2)", "n", "Amplitude"); xgrid(1);
subplot(5,1,4); plot2d3(n, x2n, 5); e = gce(); e.children.thickness = 2;
plot(n, x2n, 'ro'); e = gce(); e.children.thickness = 2;
xtitle("(4) Delayed Input x2(n) = x(n - 2)", "n", "Amplitude"); xgrid(1);
subplot(5,1,5); plot2d3(n, y2n_d, 2); e = gce(); e.children.thickness = 2;
plot(n, y2n_d, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("(5) Output from Delayed Input y2(n) = n*x2(n)", "n", "Amplitude"); xgrid(1);
