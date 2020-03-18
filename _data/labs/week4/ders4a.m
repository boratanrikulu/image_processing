image = imread('peppers.png');

red = image(:, :, 1);
green = image(:, :, 2);
blue = image(:, :, 3);

subplot(332);
imshow(image);
title('Image');

subplot(334);
imhist(red);
title('Red');

subplot(335);
imhist(green);
title('Green');

subplot(336);
imhist(blue);
title('Blue');

image_gray = rgb2gray(image);

subplot(338);
imhist(image_gray);
title('Gray image');
