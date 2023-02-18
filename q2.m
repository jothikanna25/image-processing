m=imread('pic.jpg');
i=rgb2lab(m);
h1=histeq(m);
L = i(:,:,1)/100;
L = adapthisteq(L,'NumTiles',[8 8],'ClipLimit',0.005);
i(:,:,1) = L*100;
h2 = lab2rgb(i);
subplot(2,2,1), imshow(h1), title('Histogram Equalized Image');
subplot(2,2,2), imhist(h1), title('Histogram of Equalized Image');
subplot(2,2,3), imshow(h2), title('CLAHE Image');
subplot(2,2,4), imhist(h2), title('Histogram of CLAHE Image')
nscore=niqe(h1);
nscores=niqe(L);
fprintf("Image score (NIQE) for Histogram equalised image: %0.2f.\n", nscore)
fprintf("Image score (NIQE) for CLAHE image: %0.2f.\n", nscores)