clc,clear all,close all;
	
image = imread('LENNAorijinal.bmp');

image_double = double(image);

G = 256;
N = 256;
M = 256;
hist = imhist(uint8(image_double));

t(1) = hist(1);
for i = 2:256
   t(i) = t(i-1) + hist(i);
end

Q = max(0, round((G * t) ./ (N * M) - 1));

for k = 0:255
    for i = 1:M
        for j = 1:N
            if image_double(i, j) == k
                Qhisteq(i, j) = Q(k + 1);
            end
        end
        
    end
end

subplot(121)
imshow(uint8(Qhisteq));
title('');

subplot(122)
imhist(uint8(Qhisteq));
title('');

