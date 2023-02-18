a=imread('pic.jpg');
a = im2double(a);
PSF = fspecial('motion',21,11);
a_blurred = imfilter(a,PSF,'conv','circular');
noise_mean = 0;
noise_var = 0.0001;
signal_var = var(a(:));
NSR = noise_var / signal_var;
a_blurred = imnoise(a_blurred, 'gaussian',noise_mean,noise_var);
figure(2)
imshow(a_blurred);
title('Blurred image with gaussian noise');
I=imnoise(a,'salt & pepper',0.5);
figure;
imshow(I);
title('Image with Salt & Pepper Noise');
figure;
DD = deconvwnr(a_blurred,PSF,NSR);
figure(3)
imshow(DD);
title('Imager Restored');
nscore=niqe(a_blurred);
fprintf("Image score for Blurred image with gaussian noise: %0.2f.\n", nscore)
nscores=niqe(I);
fprintf("Image score for Image with salt & pepper noise: %0.2f.\n", nscores)
nscoree=niqe(DD);
fprintf("Image score of the image restored: %0.2f.\n", nscoree)