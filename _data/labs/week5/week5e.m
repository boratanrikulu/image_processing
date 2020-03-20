clc,clear all,close all;

image = imread('images/LENNAorijinal.bmp');
I = double(image);

% Alçak geçiren filtreleme. %
image_noisy_1 = noisyPhoto(I, 10);
image_noisy_2 = noisyPhoto(I, 20);
image_noisy_3 = noisyPhoto(I, 30);

subplot(332);
imshow(image);
title('Original photo.');
subplot(334);
imshow(uint8(image_noisy_1));
title('Noisy photo. (SNR = 10)');
subplot(335);
imshow(uint8(image_noisy_2));
title('Noisy photo. (SNR = 20)');
subplot(336);
imshow(uint8(image_noisy_3));
title('Noisy photo. (SNR = 50)');
subplot(337);
imshow(uint8(conv2(image_noisy_1, ones(3)./9, 'same')));
title('AGS. (1/9 filter)');
subplot(338);
imshow(uint8(conv2(image_noisy_2, ones(3)./9, 'same')));
title('AGS. (1/9 filter)');
subplot(339);
imshow(uint8(conv2(image_noisy_3, ones(3)./9, 'same')));
title('AGS. (1/9 filter)');

function image_noisy = noisyPhoto(image, SNR)
    [N M] = size(image);
    PS = sum(sum(image.^2) / (N*M)); % power of signal
    sigma = PS ./ (10^(0.1*SNR));
    % randn('seed', 0);
    W = sqrt(sigma) .* randn(N, M); % PN
    image_noisy = plus(image, W);
    return
end
