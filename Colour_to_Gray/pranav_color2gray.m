% By BT20ECE068 - PRANAV SHASTRI
% MATLAB CODE TO CONVERT COLOUR IMAGE TO GRAYSCALE

clear all;
close all;
clc;

% Load the color image
colorImage = imread('Butterfly.jpeg');


% Convert color image to grayscale by inbuilt function
grayImage = rgb2gray(colorImage);
figure(1);
imshow(grayImage); % Display the grayscale image
title('Grayscale Image');


% Convert color image to grayscale without inbuilt function
%red Channel
Ir = colorImage(:,:,1); 
%green Channel
Ig = colorImage(:,:,2); 
%blue Channel
Ib = colorImage(:,:,3); 


% Calculate grayscale using luminance formula
grayImg = 0.2989*Ir + 0.5870*Ig + 0.1140*Ib;
figure(2);
imshow(grayImg);


%converting into Grayscale by taking Mean
gray_Img = round((Ir+Ig+Ib)/3);
figure(3);
imshow(gray_Img);

% Display the individual channels - Red , Green & Blue
Ired = colorImage;
Ired(:,:,2)=0;
Ired(:,:,3)=0;

Igreen =colorImage;
Igreen(:,:,1)=0;
Igreen(:,:,3)=0;

Iblue = colorImage;
Iblue(:,:,2)=0;
Iblue(:,:,1)=0;

figure(4)
subplot(1, 3, 1), imshow(Ired);
title('Red');
subplot(1, 3, 2), imshow(Igreen);
title('Green');
subplot(1, 3, 3), imshow(Iblue);
title('Blue');


% converting into Black & White image

%take grayscale image we got previously i.e grayImage
% Set a threshold for black and white conversion
threshold = 128;

% Create a black and white image based on the threshold
black_and_white = grayImage >= threshold;

% Display the binary image
figure(5);
imshow(black_and_white);
title('Black and White Image');