clc; clear;

img = zeros(256, 256, 3);

for row = 1:256
    for col = 1:256
        img(row, col, 1) = row - 1;
        img(row, col, 2) = col - 1;
        img(row, col, 3) = 150;
    end
end

img = uint8(img);

scf(0); clf();
Matplot(img);

xstring(20, 128, "DSP Lab 4 - WATERMARK");
e = gce();
e.font_size = 4;
e.font_color = 0;

xtitle("Generated RGB Gradient Image with Watermark");
