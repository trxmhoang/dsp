// Ex 2.1
clc; clear;

// Part a
n = -3:3;
xn = zeros(1, length(n));
for i = 1:length(n)
    if n(i) >= -3 & n(i) <= -1 then
        xn(i) = 1 + n(i)/3;
    elseif n(i) >= 0 & n(i) <= 3 then
        xn(i) = 1;
    end
end
disp("Part (a): Original signal x(n):");
disp(xn);
disp("Time axis n:");
disp(n);

figure(1); clf();
f = gcf(); f.background = 8;
plot2d3(n, xn, 5); e = gce(); e.children.thickness = 2;
plot(n, xn, 'ro'); e = gce(); e.children.thickness = 2;
xtitle("Part (a): Original signal x(n)", "n", "x(n)");
xgrid(1);

// Part b.1
n_fold = -n($:-1:1);
xn_fold = xn($:-1:1);

n_y1 = n_fold + 4;
y1n = xn_fold;

disp("Part (b.1): y1(n) = x(-n+4):");
disp(y1n);
disp("Time axis for y1(n):");
disp(n_y1);

figure(2); clf();
f = gcf(); f.background = 8;
plot2d3(n_y1, y1n, 2); e = gce(); e.children.thickness = 2;
plot(n_y1, y1n, 'bo'); e = gce(); e.children.thickness = 2;
xtitle("Part (b.1) & (c): Folded then delayed y1(n) = x(-n+4)", "n", "y1(n)");
xgrid(1);

// Part b.2
n_delay = n + 4;
xn_delay = xn;

n_y2 = -n_delay($:-1:1);
y2n = xn_delay($:-1:1);

disp("Part (b.2): y2(n) = x(-n-4):");
disp(y2n);
disp("Time axis for y2(n):");
disp(n_y2);

figure(3); clf();
f = gcf(); f.background = 8;
plot2d3(n_y2, y2n, 3); e = gce(); e.children.thickness = 2;
plot(n_y2, y2n, 'go'); e = gce(); e.children.thickness = 2;
xtitle("Part (b.2): Delayed then folded y2(n) = x(-n-4)", "n", "y2(n)");
xgrid(1);
