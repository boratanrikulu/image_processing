clc,clear all,close all;
	
image = imread('pout.tif');

image_new = imadjust(image, stretchlim(image), [0.0, 1.0]);

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
