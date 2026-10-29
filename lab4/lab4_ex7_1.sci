// Ex 7.1
clc; clear;

xn = [1, 2, -3, 2, 1];
hn = [1, 0, -1, -1, 1];
N = length(xn);

yn = zeros(1, N);
for n = 0 : N-1
    sum_val = 0;
    for k = 0 : N-1
        idx = pmodulo(n - k, N); 
        sum_val = sum_val + hn(k + 1) * xn(idx + 1);
    end
    yn(n + 1) = sum_val;
end

disp("Circular convolution result (Folding and Shifting):");
disp(yn);

n_axis = 0 : N-1;
scf(0); clf();

subplot(3,1,1);
plot(n_axis, xn, 'ro-');e = gce(); e.children.thickness = 2;
xtitle("Input signal x(n)", "n", "x(n)"); xgrid(1);

subplot(3,1,2);
plot(n_axis, hn, 'go-'); e = gce(); e.children.thickness = 2;
xtitle("Impulse response h(n)", "n", "h(n)"); xgrid(1);

subplot(3,1,3);
plot(n_axis, yn, 'bo-'); e = gce(); e.children.thickness = 2;
xtitle("Circular convolution y(n)", "n", "y(n)"); xgrid(1);
