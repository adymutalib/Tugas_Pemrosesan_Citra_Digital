img = imread('patrick1.png');
imgg = rgb2gray(img);

c = 3;
w_all = c * [0 0 0; 0 1 0; 0 0 0];
w_high = [0 -1 0; -1 4 -1; 0 -1 0];
w_boost = w_all + w_high;

boost1 = uint8(conv2(imgg, w_boost, 'same'));

figure(1);
subplot(1,2,1); imshow(imgg); title("citra asal");
subplot(1,2,2); imshow(boost1); title("Citra High Boost Filtering");
