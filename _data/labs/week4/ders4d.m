clc,clear all,close all;
	
image = imread('pout.tif');
histeq_image = histeq(image);

subplot(221);
imshow(image);
title('Original image');

subplot(222);
imhist(image);
title('Histogram of original image');

subplot(223);
imshow(histeq_image);
title('Histeq image');

subplot(224);
imhist(histeq_image);
title('Histogram of histeq image');