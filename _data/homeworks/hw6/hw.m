clc,clear all,close all;

image = imread('eight.tif');
I = imnoise(image, 'salt & pepper', 0.1);

ZERO_X = 3;
ZERO_Y = 3;
image_zerod = getZerodImage(I, ZERO_X, ZERO_Y);

% Filtres. %
M1 = [-1, 1; 0, 1; 1, 1; -1, 0; 0, 0; 1, 0; -1, -1; 0, -1; 1, -1];
M2 = [0, 1; -1, 0; 0, 0; 1, 0; 0, -1];
M3 = [-1, 0; 0, 0; 1, 0];
M4 = [0, 1; 0, 0; 0, -1];

% Create result variables. %
[N M] = size(I);
image_m1_new = I;
image_m2_new = I;
image_m3_new = I;
image_m4_new = I;

% Calc results. %
for i = 1:N
    for j = 1:M
        image_m1_new(i, j) = pointMedian(image_zerod, i, j, ZERO_X, ZERO_Y, M1);
        image_m2_new(i, j) = pointMedian(image_zerod, i, j, ZERO_X, ZERO_Y, M2);
        image_m3_new(i, j) = pointMedian(image_zerod, i, j, ZERO_X, ZERO_Y, M3);
        image_m4_new(i, j) = pointMedian(image_zerod, i, j, ZERO_X, ZERO_Y, M4);
    end
end

% Results. %
subplot(321);
imshow(image);
title('Original photo');
subplot(322);
imshow(I);
title('Original photo (salt and pepper noise with 0.1)');
subplot(323);
imshow(image_m1_new);
title('M1 Filtre');
subplot(324);
imshow(image_m2_new);
title('M2 Filtre');
subplot(325);
imshow(image_m3_new);
title('M3 Filtre');
subplot(326);
imshow(image_m4_new);
title('M4 Filtre');


% Median of the point. %
function point_median = pointMedian(image, i, j, ZERO_X, ZERO_Y, locations)
    elements = [];
    [N M] = size(locations);

    for k = 1:N
        x = locations(k, 1);
        y = locations(k, 2);
        elements = [elements; image(i+x+ZERO_X, j+y+ZERO_Y)];
    end
    point_median = median(elements);

    returnz
end

% Zero image. %
function image_zerod = getZerodImage(image, n, m)
    [N M] = size(image);
    image_zerod(1:N+2*n, 1:M+2*m) = zeros;
    [Nb Mb] = size(image_zerod);
    image_zerod(n+1:Nb-n, m+1:Mb-m) = image;
    return
end
