clc,clear all,close all;

% im2double 0-1 arasına çeker. %
image = im2double(imread('tire.tif'));

c = 1;
gamma = 0.5;
image_new_1 = c * power(image, gamma); 

c = 1;
gamma = 1.2;
image_new_2 = c * power(image, gamma); 

c = 1;
gamma = 3;
image_new_3 = c * power(image, gamma); 

c = 1;
gamma = 5.5;
image_new_4 = c * power(image, gamma);

subplot(221);
imshow(image_new_1);
title('c = 1 and gamma = 0.5');

subplot(222);
imshow(image_new_2);
title('c = 1 and gamma = 1.2h');

subplot(223);
imshow(image_new_3);
title('c = 1 and gamma = 3.0');

subplot(224);
imshow(image_new_4);
title('c = 1 and gamma = 5.5');
