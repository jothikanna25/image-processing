i = imread('pic.jpg');
stretched_utc=imadjust(i,stretchlim(i));
subplot(2,2,1), imshow(i), title('Original Image');
subplot(2,2,2), imshow(stretched_utc), title('Contrast Stretched Image');
%subplot(2,2,3), imhist(i), title('Histogram of Original Image');
%subplot(2,2,4), imhist(stretched_utc), title('Histogram of Contrast Stretched Image');
%nscore=niqe(i);
%fprintf("Image score for orginal image: %0.2f.\n", nscore);
%nscoree=niqe(stretched_utc);
%fprintf("Image score for contrast stretched image: %0.2f.\n", nscoree);