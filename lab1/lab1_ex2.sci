// Ex 1.2
F   = 50;
T   = 1/F;
t   = linspace(0, 5*T, 1000);
xa  = 3*sin(100*%pi*t);

subplot(3, 1, 1);
plot(t, xa);
title('Analog Signal xa(t)');

Fs  = 300;
N   = 6;
n   = 0:(5*N - 1);
xn  = 3*sin(100*%pi*(n/Fs));

subplot(3, 1, 2);
plot2d3(n, xn);
plot(n, xn, 'ro');
title('Discrete Signal x(n)');

delta = 0.1;
xq    = floor(xn/delta)*delta;

subplot(3, 1, 3);
plot2d3(n, xq);
plot(n, xq, 'go');
title('Quantized Signal xq(n) with Truncation (Delta = 0.1)');
