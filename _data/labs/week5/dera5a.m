clc,clear all,close all;

image = imread('breast.jpg');
image_new = imcomplement(image);

subplot(121);
imshow(image);
subplot(122);
imshow(image_new);