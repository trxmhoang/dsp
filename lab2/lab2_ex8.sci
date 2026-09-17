// Ex 2.8
n = -2:1;
x = [1, -2, 3, 6];

// y1(n) = x(-n)
n1 = -n($:-1:1);
y1 = x($:-1:1);

scf(1);
subplot(2, 1, 1);
plot2d3(n, x, 2);
e = gce();
e.children.thickness = 2;
xgrid();
title("Original Signal x(n)");
xlabel("n (Time steps)");
ylabel("Amplitude");

subplot(2, 1, 2);
plot2d3(n1, y1, 5);
e = gce();
e.children.thickness = 2;
xgrid();
title("y1(n) = x(-n)");
xlabel("n (Time steps)");
ylabel("Amplitude");

// y2(n) = x(n + 3)
n2 = n - 3;
y2 = x;

scf(2);
subplot(2, 1, 1);
plot2d3(n, x, 2);
e = gce();
e.children.thickness = 2;
xgrid();
title("Original Signal x(n)");
xlabel("n (Time steps)");
ylabel("Amplitude");

subplot(2, 1, 2);
plot2d3(n2, y2, 5);
e = gce();
e.children.thickness = 2;
xgrid();
title("y2(n) = x(n + 3)");
xlabel("n (Time steps)");
ylabel("Amplitude");

// y3(n) = 2x(-n - 2)
n3 = n1 - 2;
y3 = 2*y1;

scf(3);
subplot(2, 1, 1);
plot2d3(n, x, 2);
e = gce();
e.children.thickness = 2;
xgrid();
title("Original Signal x(n)");
xlabel("n (Time steps)");
ylabel("Amplitude");

subplot(2, 1, 2);
plot2d3(n3, y3, 5);
e = gce();
e.children.thickness = 2;
xgrid();
title("y3(n) = 2x(-n - 2)");
xlabel("n (Time steps)");
ylabel("Amplitude");
