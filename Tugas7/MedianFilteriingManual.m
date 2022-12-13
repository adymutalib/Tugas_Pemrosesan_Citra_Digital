img = imread('C:\Users\ACER\Downloads\Tugas7\img\cat.PNG');
imgg = rgb2gray(img);

[tinggi, lebar] = size(imgg);

for baris = 2 : tinggi-1
  for kolom = 2 : lebar-1
    data = [imgg(baris-1, kolom-1) imgg(baris-1, kolom) imgg(baris-1, kolom+1) imgg(baris, kolom-1) imgg(baris, kolom) imgg(baris, kolom+1) imgg(baris+1, kolom-1) imgg(baris+1, kolom) imgg(baris+1, kolom+1)]
    for i=1 : 8
      for j=i+1 : 9
        if data(i) > data(j)
          tmp = data(i);
          data(i) = data(j);
          data(j) = tmp;
        endif
      endfor
    endfor
    img_med(baris, kolom) = data(5);
  endfor
endfor

figure(1);
subplot(1,2,1); imshow(imgg); title('citra asli');
subplot(1,2,2); imshow(img_med); title('hasil citra filter median');
