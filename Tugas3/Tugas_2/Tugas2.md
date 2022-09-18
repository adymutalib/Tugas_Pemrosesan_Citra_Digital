<h1 align="center">Pemrosesan Citra Digital</h1>
<h1 align="center">Tugas 2</h1>
<h2 align="center">
Nama : Ady Mutalib <br>
NIM : 2110131110003
</h2>

<br>
<p align="center" >
<img src="img/1.png" style="width:40%">
</p>
<br>

---


<p style="text-align:justify;">
1. Jelaskan ada berapa layer pada gambar berwarna! screenshot hasil ekplorasi layer pada aplikasi octave.<br>

**Jawaban :**

Gambar berwarna ada tiga Red Green dan Blue, Hasil ekplorasi layer pada octave :
</p>


<br><br>
<p style="text-align:center;">
Red
</p>

<p align="center">
<img src="img/2.png" style="width:40%">
</p>

<p style="text-align:center;">
Gambar 1
</p>


<br><br>
<p style="text-align:center;">
Green
</p>

<p align="center">
<img src="img/4.png" style="width:40%">
</p>

<p style="text-align:center;">
Gambar 2
</p>


<br><br>
<p style="text-align:center;">
Blue
</p>

<p align="center">
<img src="img/3.png" style="width:40%">
</p>

<p style="text-align:center;">
Gambar 3
</p>

<br><br>

<p style="text-align:justify;">
2. Jelaskan ada berapa layer pada gambar berwarna! screenshot hasil ekplorasi layer pada aplikasi octave.<br>

**Jawaban :**

Gunakan fungsi (1) imread, (2) imshow (3) dan imhist. jelaskan fungsi-fungsi tersebut disertakan screenshot :

    gambar = imread(img\photo.jpg)
    imshow(gambar);
    R = gambar(:,:,1);
    G = gambar(:,:,2);
    B = gambar(:,:,3);
    Red = cat(3,R,G*0,B*0);
    Green = cat(3,R*0,G,B*0);
    Blue = cat(3,R*0,G*0,B);
    figure(1);
    subplot(1,2,1);imshow(Red);title('Red');
    subplot(1,2,2),imhist(Red);
    figure(2);
    subplot(1,2,1);imshow(Green);title('Green');
    subplot(1,2,2),imhist(Green);
    figure(3);
    subplot(1,2,1);imshow(Blue);title('Blue');
    subplot(1,2,2),imhist(Blue);
</p>

<br><br>
<p style="text-align:center;">
Screenshot syntax coding
</p>

<p align="center">
<img src="img/5.png" style="width:40%">
</p>

<p style="text-align:center;">
Gambar 4
</p>

<br><br>

<p style="text-align:justify;">
Penjelasan fungsi : 

- Imread 
    - Berfungsi untuk membaca file image ituberada

- Imshow 
    - Berfungsi untuk menampilkan objek gambar

- Imhist 
    - Berfungsi untuk menampilkan image dengan bentuk histogram
</p>
