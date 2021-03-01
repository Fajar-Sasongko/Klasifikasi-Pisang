function [gray_img] =  grayImage(I,k_val)

grayImage = I;
[rows, columns, numberOfColorChannels] = size(grayImage);
if numberOfColorChannels > 1
  grayImage = rgb2gray(grayImage);
end
gray_img = grayImage;