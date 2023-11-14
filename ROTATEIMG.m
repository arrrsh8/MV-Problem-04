clc ; clear ; close all;

img = imread('image1.jpg');
img2=rgb2gray(img);
imshow(img2);
title('Orginal image');

[r,c]= size(img2);
for i =1:r 
    for j=1:c 
        Ver(i,j) = img2(i,c-j+1);
    end
end
figure,imshow(Ver);
title('Mirrored');

for i =1:r 
    for j=1:c 
        Fli(i,j) = img2(r-i+1,j);
    end
end
figure,imshow(Fli);
title('Flipped');

for i =1:r 
    for j=1:400 
        Rot(i,j) = img2(j,c-i+1);
    end
end
figure,imshow(Rot);
title('Rotated');
%Alireza Shafi