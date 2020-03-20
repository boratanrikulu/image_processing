clc,clear all,close all;

% im2double 0-1 arasına çeker. %
image = im2double(imread('tire.tif'));

c = 1;
image_new_1  = c * log(1 + image);

c = 2;
image_new_2  = c * log(1 + image);

c = 5;
image_new_3  = c * log(1 + image);

subplot(221);
imshow(image);
title('Original image.');

subplot(222);
imshow(image_new_1);
title('c = 1');

subplot(223);
imshow(image_new_2);
title('c = 2');

subplot(224);
imshow(image_new_3);
title('c = 5');