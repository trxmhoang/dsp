// Ex 2.2
clc; clear;

function val = get_x(n_val)
    val = zeros(1, length(n_val));
    for i = 1:length(n_val)
        ni = n_val(i);
        if ni >= -1 & ni <= 2 then
            val(i) = 1;
        elseif ni == 3 | ni == 4 then
            val(i) = 0.5;
        else
            val(i) = 0;
        end
    end
endfunction

n = -6:6;
xn = get_x(n);

// Origin
disp("Original Signal x(n) on range [-6, 6]:");
disp(xn);
figure(1); clf(); f = gcf(); f.background = 8;

subplot(4,1,1);
plot2d3(n, xn, 5); e = gce(); e.children.thickness = 2;
plot(n, xn, 'ro'); e = gce(); e.children.thickness = 2;
xtitle("Original signal x(n)", "n", "x(n)"); xgrid(1);

// Part a
ya = get_x(n - 2);
subplot(4,1,2);
plot2d3(n, ya, 2); e = gce(); e.children.thickness = 2;
plot(n, ya, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("(a) Delayed signal x(n - 2)", "n", "Amplitude"); xgrid(1);

// Part b
yb = get_x(4 - n);
subplot(4,1,3);
plot2d3(n, yb, 3); e = gce(); e.children.thickness = 2;
plot(n, yb, 'go'); e = gce(); e.children.thickness = 2;
xtitle("(b) Folded and shifted signal x(4 - n)", "n", "Amplitude"); xgrid(1);

// Part c
yc = get_x(n + 2);
subplot(4,1,4);
plot2d3(n, yc, 2); e = gce(); e.children.thickness = 2;
plot(n, yc, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("(c) Advanced signal x(n + 2)", "n", "Amplitude"); xgrid(1);

// Part d
figure(2); clf(); f = gcf(); f.background = 8;

u_2_minus_n = zeros(1, length(n));
u_2_minus_n(n <= 2) = 1;
yd = xn .* u_2_minus_n;

subplot(2,1,1);
plot2d3(n, yd, 5); e = gce(); e.children.thickness = 2;
plot(n, yd, 'ro'); e = gce(); e.children.thickness = 2;
xtitle("(d) Signal x(n)u(2 - n)", "n", "Amplitude"); xgrid(1);

// Part e
del_n_minus_3 = zeros(1, length(n));
del_n_minus_3(n == 3) = 1;
ye = get_x(n - 1) .* del_n_minus_3;

subplot(2,1,2);
plot2d3(n, ye, 2); e = gce(); e.children.thickness = 2;
plot(n, ye, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("(e) Signal x(n - 1)*delta(n - 3)", "n", "Amplitude"); xgrid(1);

// Part f
figure(3); clf(); f = gcf(); f.background = 8;

yf = get_x(n.^2);

plot2d3(n, yf, 3); e = gce(); e.children.thickness = 2;
plot(n, yf, 'go'); e = gce(); e.children.thickness = 2;
xtitle("(f) Time-scaled signal x(n^2)", "n", "Amplitude"); xgrid(1);

//Part g
figure(4); clf(); f = gcf(); f.background = 8;

yg = 0.5 * (get_x(n) + get_x(-n));
yh = 0.5 * (get_x(n) - get_x(-n));

subplot(2,1,1);
plot2d3(n, yg, 5); e = gce(); e.children.thickness = 2;
plot(n, yg, 'ro'); e = gce(); e.children.thickness = 2;
xtitle("(g) Even part of x(n)", "n", "Amplitude"); xgrid(1);

// Part h
subplot(2,1,2);
plot2d3(n, yh, 2); e = gce(); e.children.thickness = 2;
plot(n, yh, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("(h) Odd part of x(n)", "n", "Amplitude"); xgrid(1);
