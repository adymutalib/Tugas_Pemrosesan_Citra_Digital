gambar = imread('D:\DATA ADY MUTALIB\DATA ADY MUTALIF\DATA KULIAH\DATA KULIAH SEMESTER III 2022\MATKUL\KAMIS\Pemrosesan Citra Digital\Tugas_Pemrosesan_Citra_Digital\Tugas3\Tugas_2\img\PCD.jpg');
imshow(gambar);
R = gambar(:,:,1);
G = gambar(:,:,2);
B = gambar(:,:,3);
Red = cat(3,R,G*0,B*0);
Green = cat(3,R*0,G,B*0);
Blue = cat(3,R*0,G*0,B);
figure(1);
subplot(1,2,1);imshow(Red);title('Red');
subplot(1,2,2),imhist(Red);title('Histogram');
figure(2);
subplot(1,2,1);imshow(Green);title('Green');
subplot(1,2,2),imhist(Green);title('Histogram');
figure(3);
subplot(1,2,1);imshow(Blue);title('Blue');
subplot(1,2,2),imhist(Blue);title('Histogram');
