// Ex 1.1
x  = 1:4;
v1 = x + 1;
disp("Result of v1:", v1);

y  = 5:8;
v2 = x .* y;
disp("Result of v2:", v2);

x_lin = linspace(0, %pi, 10);
v3    = sin(x_lin);
disp("Result of v3:", v3);
