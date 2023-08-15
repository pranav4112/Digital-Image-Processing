% By BT20ECE068 - PRANAV SHASTRI
% MATLAB CODE TO IMPLEMENT HISTOGRAM EQUALIZATION

clear all;
close all;
clc;

% Load the Grayscale image
colorImage = imread('nature.jpg');
grayImage = rgb2gray(colorImage);
imshow(grayImage);

% Perform histogram equalization
equalizedImage = histeq(grayImage);

% Display the original and equalized images
subplot(1, 2, 1), imshow(grayImage);
title('Original Grayscale Image');
subplot(1, 2, 2), imshow(equalizedImage);
title('Equalized Grayscale Image');

% Display histograms of the original and equalized images
figure;
subplot(1, 2, 1), imhist(grayImage);
title('Histogram of Original Image');
subplot(1, 2, 2), imhist(equalizedImage);
title('Histogram of Equalized Image');

