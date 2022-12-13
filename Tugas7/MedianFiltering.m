img = imread('patrick1.png');
imgg = rgb2gray(img);
median = medfilt2(imgg);

figure(1);
subplot(1,2,1); imshow(imgg); title("citra asal");
subplot(1,2,2); imshow(median); title("hasil median Filtering");
