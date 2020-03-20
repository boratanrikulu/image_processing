clc,clear all,close all;

image = rgb2gray(imread('images/breast.jpg'));

image_new  = 255 - image;
imshow(image_new);
