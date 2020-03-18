clc,clear all,close all;



function image_noisy = noisyPhoto(image, SNR)
    [N M] = size(image);
    PS = sum(sum(image.^2) / (N*M)); % power of signal
    sigma = PS ./ (10^(0.1*SNR));
    % randn('seed', 0);
    W = sqrt(sigma) .* randn(N, M); % PN
    image_noisy = plus(image, W);
    return
end
