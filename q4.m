original4 = imread('pic.jpg');
subplot(1,3,1),imshow(original4),title('Original Image')

%% addition
addition = original4 + 70;
subplot(1,3,2),imshow(addition),title('After addition')

%% subtraction
subtaction = original4 - 70;
subplot(1,3,3),imshow(subtaction),title('After subtraction')
