clc,clear all,close all;

image = rgb2gray(imread('breast.jpg'));

image_new  = 255 - image;
imshow(image_new);