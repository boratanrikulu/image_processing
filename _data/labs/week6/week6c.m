clc,clear all,close all;

image = imread('goruntul2.jpg');
I = double(image);
[N M] = size(I);

roberts_x = [-1 0; 0 1]
roberts_y = [0 -1; 1 0]

gx = conv2(f, roberts_x, 'same');
gy = conv2(f, roberts_y, 'same');

y1 = sqrt(gx .^ 2 + gyy .^ 2);

