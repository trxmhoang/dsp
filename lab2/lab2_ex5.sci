// Ex 2.5
n = -1:1;
x = [1, 3, -2];
x_fold = x($:-1:1);
xe = 0.5*(x + x_fold);
xo = 0.5*(x - x_fold);

subplot(3, 1, 1);
plot2d3(n, x, 2);
e = gce();
e.children.thickness = 2;
xgrid();
title("Original Signal x(n)");
xlabel("n (Time steps)");
ylabel("Amplitude");

subplot(3, 1, 2);
plot2d3(n, xe, 3);
e = gce();
e.children.thickness = 2;
xgrid();
title("Even Component xe(n)");
xlabel("n (Time steps)");
ylabel("Amplitude");

subplot(3, 1, 3);
plot2d3(n, xo, 5);
e = gce();
e.children.thickness = 2;
xgrid();
title("Odd Component xo(n)");
xlabel("n (Time steps)");
ylabel("Amplitude");
