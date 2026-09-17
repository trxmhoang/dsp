// Ex 2.6
n1 = 0:3;
x1 = [0, 1, 3, -2];

n2 = -1:2;
x2 = [0, 1, 2, 3];

n_start  = min(min(n1), min(n2));
n_end    = max(max(n1), max(n2));
n_master = n_start:n_end;

x1_pad   = zeros(1, length(n_master));
x2_pad   = zeros(1, length(n_master));

x1_pad(n1 - n_start + 1) = x1;
x2_pad(n2 - n_start + 1) = x2;

y = x1_pad .* x2_pad;

subplot(3, 1, 1);
plot2d3(n_master, x1_pad, 2);
e = gce();
e.children.thickness = 2;
xgrid();
title("Signal x1(n)");
xlabel("n (Time steps)");
ylabel("Amplitude");

subplot(3, 1, 2);
plot2d3(n_master, x2_pad, 3);
e = gce();
e.children.thickness = 2
xgrid();
title("Signal x2(n)");
xlabel("n (Time steps)");
ylabel("Amplitude");

subplot(3, 1, 3);
plot2d3(n_master, y, 5);
e = gce();
e.children.thickness = 2
xgrid();
title("Multiplied Signal y(n) = x1(n).x2(n)");
xlabel("n (Time steps)");
ylabel("Amplitude");
