clc,clear all,close all;

h = fspecial('laplacian');

image = imread('moon.tif');

I = double(image);
output = imfilter(image, h, 'replicate');

output = plus(I, output);

subplot(121);
imshow(image);
title('Original Image');

subplot(122);
imshow(uint8(output));
title('Laplasyen');