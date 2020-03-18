clc,clear all,close all;

image = imread('images/lenna.bmp');

image_2 = image(1:2:end, 1:2:end, :);
image_4 = image(1:4:end, 1:4:end, :);
image_6 = image(1:6:end, 1:6:end, :);
image_8 = image(1:8:end, 1:8:end, :);
image_10 = image(1:10:end, 1:10:end, :);

subplot(231);
imshow(image);
title('Original image');

subplot(232);
imshow(image_2);
title('2x reduced image');


subplot(233);
imshow(image_4);
title('4x reduced image');


subplot(234);
imshow(image_6);
title('6x reduced image');


subplot(235);
imshow(image_8);
title('8x reduced image');


subplot(236);
imshow(image_10);
title('10x reduced image');
