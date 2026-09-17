// Ex 2.4
n = -5:5;
ur_signal = n .* bool2s(n >= 0);
plot2d3(n, ur_signal, 2);
e = gce();
e.children.thickness = 2
xgrid();
title('Unit Ramp Signal ur(n)');
xlabel('n (Time steps)');
ylabel('Amplitude');
