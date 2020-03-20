clc,clear all,close all;

img = imread('peppers.png');

% Example 1 %
red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);

subplot (331);
imshow(red);
title('Red');

subplot (332);
imshow(green);
title('Green');

subplot (333);
imshow(blue);
title('Blue');

% Example 2 %
grb = img;
grb(:,:,1) = img(:,:,2);
grb(:,:,2) = img(:,:,1);
grb(:,:,3) = img(:,:,3);

rbg = img;
rbg(:,:,1) = img(:,:,1);
rbg(:,:,2) = img(:,:,3);
rbg(:,:,3) = img(:,:,2);

gbr = img;
gbr(:,:,1) = img(:,:,2);
gbr(:,:,2) = img(:,:,3);
gbr(:,:,3) = img(:,:,1);

subplot (334);
imshow(grb);
title('GRB');

subplot (335);
imshow(rbg);
title('RBG');

subplot (336);
imshow(gbr);
title('GBR');

% Example 3 %
red = img;
red(:,:,2) = 0;
red(:,:,3) = 0;

green = img;
green(:,:,1) = 0;
green(:,:,3) = 0;

blue = img;
blue(:,:,1) = 0;
blue(:,:,2) = 0;

subplot (337);
imshow(red);
title('Red');

subplot (338);
imshow(green);
title('Green');

subplot (339);
imshow(blue);
title('Blue');

