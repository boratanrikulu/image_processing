clc,clear all,close all;

image = imread('images/Kadin.bmp');
n1 = input('What is the "n" value? (3x3 matrix for n = 1) ');
k = input('What is the "k" value? (must be between 0 and 1) ');

if k < 0 || k > 1
    error('Key value must be between 0 and 1.');
end

% Zero image. %
image_zerod = getZeroImage(image, n1);

% Average value of the image. %
image_average = mean(mean(image));

% Creating new image. %
I = double(image);
[N M] = size(I);
image_new = image;
for i = 1:N
    for j = 1:M
        result = 0;

        A = k * image_average / sqrt(pointVariance(image_zerod, i, j, n1, n1));
        result = A * (I(i, j) - pointAverage(image_zerod, i, j, n1, n1)) + pointAverage(image_zerod, i, j, n1, n1);

        image_new(i,j) = result;
    end
end

% Showing the result. %
subplot(221);
imshow(image);
title('Original image.');
subplot(222);
imhist(image);
title('Histogram of the original image.');
subplot(223);
imshow(image_new);
title('New image.');
subplot(224);
imhist(image_new);
title('Histogram of the new image.');


% Zero image. %
function image_zerod = getZeroImage(image, n1)
    I = double(image);
    [N M] = size(I);
    image_zerod(1:N+2*n1, 1:M+2*n1) = zeros;
    [Nb Mb] = size(image_zerod);
    image_zerod(n1+1:Nb-n1, n1+1:Mb-n1) = I;
    return
end

% Average of a point. %
function point_average = pointAverage(image, i, j, n1, n2)
    point_average = 0;
    for k = (-1*n1):(n1)
        for l = (-1*n2):(n2)
            point_average = point_average + image(i+n1+k, j+n2+l);
        end
    end
    point_average = point_average * (1 / ((2*n1+1) * (2*n2+1)));
    return
end

% Variance of a point. %
function point_variance = pointVariance(image, i, j, n1, n2)
    point_variance = 0;
    for k = (-1*n1):(n1)
        for l = (-1*n2):(n2)
            point_variance = point_variance + (image(i+n1+k, j+n2+l) - pointAverage(image, i, j, n1, n2)) ^ 2;
        end
    end
    point_variance = point_variance * (1 / ((2*n1+1) * (2*n2+1)));
    return
end
