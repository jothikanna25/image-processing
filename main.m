i = imread('a.jpg');
I = imgaussfilt(i,2);
I_sharpen=imsharpen(I,'amount',20);
stretched_utc=imadjust(I_sharpen,stretchlim(i),[0,1]);
subplot(2,3,1), imshow(i), title('Original Image');
subplot(2,3,2), imshow(I), title('Smoothened Image');
subplot(2,3,3), imshow(I_sharpen), title('Sharpened Image');
subplot(2,3,4), imshow(stretched_utc), title('Contrast Stretched Image');
m=rgb2lab(I_sharpen);
L = I_sharpen(:,:,1)/100;
L = adapthisteq(L,'NumTiles',[8 8],'ClipLimit',0.001);
I_sharpen(:,:,1) = L*100;
h2 = lab2rgb(m);
subplot(2,3,5), imshow(h2), title('CLAHE');

nscore=niqe(i)

nscore=niqe(I)

nscore=niqe(I_sharpen)

nscore=niqe(stretched_utc)
nscore=niqe(h2)

