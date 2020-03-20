clc,clear all,close all;

image = imread('images/Kadin.bmp');

min = min(min(image(:, :, 1)));
max = max(max(image(:, :, 1)));
a = 5;
b = 250;

% c = min, d = max %
% a = new min, b = new max %
% Pout = (Pin - c) * ((b-a)/(d-c)) + a %

image_new = (image - min) * ((b - a) / (max - min)) + a;

subplot(221);
imshow(image);
title('Original image');

subplot(222);
imhist(image);
title('Histogram of original image');

subplot(223);
imshow(image_new);
title('Stretched image');

subplot(224);
imhist(image_new);
title('Histogram of stretched image');
