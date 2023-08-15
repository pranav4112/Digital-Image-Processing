% By BT20ECE068 - PRANAV SHASTRI
% MATLAB CODE TO IMPLEMENT HISTOGRAM EQUALIZATION WITHOUT in-built FUNCTION

clear all;
close all;
clc;

% Load the Grayscale image
colorImage = imread('nature.jpg');
grayImage = rgb2gray(colorImage);
imshow(grayImage);


% Calculate histogram
histogram = imhist(grayImage);

% Calculate cumulative distribution function (CDF)
cdf = cumsum(histogram);

% Calculate the total number of pixels in the image
totalPixels = numel(grayImage);

% Number of possible pixel values
L = 256;

% Initialize the equalized image
equalizedImage = zeros(size(grayImage));

% Perform histogram equalization
for i = 1:size(grayImage, 1)
    for j = 1:size(grayImage, 2)
        input_pixel_value = grayImage(i, j);
        output_pixel_value = round((cdf(input_pixel_value + 1) - cdf(1)) / (totalPixels - cdf(1)) * (L - 1));
        equalizedImage(i, j) = output_pixel_value;
    end
end

% Display the original and equalized images
subplot(1, 2, 1), imshow(grayImage);
title('Original Grayscale Image');
subplot(1, 2, 2), imshow(equalizedImage, [0, 255]);
title('Equalized Grayscale Image');