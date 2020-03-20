clc,clear all,close all;
	
image = imread('pout.tif');
adapthisteq_image = adapthisteq(image);

subplot(221);
imshow(image);
title('Original image');

subplot(222);
imhist(image);
title('Histogram of original image');

subplot(223);
imshow(adapthisteq_image);
title('Adapthisteq image');

subplot(224);
imhist(adapthisteq_image);
title('Histogram of adapthisteq image');