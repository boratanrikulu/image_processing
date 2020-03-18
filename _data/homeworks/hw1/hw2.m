clc,clear all,close all;

image = imread('images/lenna.bmp');

image_8bit = image(:, :, 1) / 1;
image_7bit = image(:, :, 1) / 2;
image_6bit = image(:, :, 1) / 4;
image_5bit = image(:, :, 1) / 8;
image_4bit = image(:, :, 1) / 16;
image_3bit = image(:, :, 1) / 32;
image_2bit = image(:, :, 1) / 64;
image_1bit = image(:, :, 1) / 128;

subplot(241);
imshow(image_8bit, [0, 255]);
title('Original image');

subplot(242);
imshow(image_7bit, [0, 127]);
title('7 bit image');

subplot(243);
imshow(image_6bit, [0, 63]);
title('6 bit image');

subplot(244);
imshow(image_5bit, [0, 31]);
title('5 bit image');

subplot(245);
imshow(image_4bit, [0, 15]);
title('4 bit image');

subplot(246);
imshow(image_3bit, [0, 7]);
title('3 bit image');

subplot(247);
imshow(image_2bit, [0, 3]);
title('2 bit image');

subplot(248);
imshow(image_1bit, [0, 1]);
title('1 bit image');
