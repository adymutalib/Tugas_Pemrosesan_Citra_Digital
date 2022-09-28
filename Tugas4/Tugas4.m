%Membaca letak gambar
gambar = imread('D:\DATA ADY MUTALIB\DATA ADY MUTALIF\DATA KULIAH\DATA KULIAH SEMESTER III 2022\MATKUL\KAMIS\Pemrosesan Citra Digital\Tugas_Pemrosesan_Citra_Digital\Tugas4\img\apel 32x32.png');

%Membaca warna yang ditampilkan
Habang = gambar(:,:,1);
Hijau = gambar(:,:,2);
Biru = gambar(:,:,3);

%Tiga rumus Grayscale :
lightness = (min(Habang,Hijau,Biru)+max(Habang,Hijau,Biru))/2;
average = (Habang+Hijau+Biru)/3;
luminosity = (0.3*Habang)+(0.59*Hijau)+(0.11*Biru);

figure(1);
imshow(gambar); title('Original');

figure(2);
imshow(lightness);title('Lightness');

figure(3);
imshow(average);title('Average');

figure(4);
imshow(luminosity);title('Luminosity');






