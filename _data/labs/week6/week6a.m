clc,clear all,close all;

h = [0 -1 0; -1  -1; 0 -1 0];

image = imread('moon.tif');

I = double(image);
y1 = conv2(I, h, 'same');

subplot(121);
imshow(image);
title('Original Image');

subplot(122);
imshow(uint8(I));
title('Laplasyen');