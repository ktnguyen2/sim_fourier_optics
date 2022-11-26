function [cropped_rotated_image] = cos_image_generation(phase)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
image = zeros(1080,1080);
[y_cos_len, x_cos_len] = size(image);
% phase = pi/4
for i=1:y_cos_len
    for j=1:x_cos_len
        image(i,j) = 1 + cos(j);
    end
end

disp(min(image,[],"all"));
figure(2);clf
rotated_image = imrotate(image, phase, "nearest", "loose");
targetSize = [360,360];
win1 = centerCropWindow2d(size(rotated_image),targetSize);
cropped_rotated_image = imcrop(rotated_image,win1);
end