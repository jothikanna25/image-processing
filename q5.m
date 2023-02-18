i = imread('pic.jpg');
gs = rgb2gray(i);
nscore=niqe(gs);
fprintf("Image score for Grayscale image: %0.2f.\n", nscore)
bw = imbinarize(gs);
InvertedBW = imcomplement(bw);
subplot(1, 2, 1)
imshow(gs)
title('Black and white Image');
subplot(1, 2, 2)
imshow(InvertedBW)
title('Inverted B&W image');