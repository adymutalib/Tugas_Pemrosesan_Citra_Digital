## Nama : Ady Mutalib
## NIM : 2110131110003

# Konversikan RGB ke Skala Abu-abu
* ## Original
<p align="center"><img src="img/ASLI.png" alt="halftoning" width="500px">

* ## Lightness Method
Metode yang sangat sederhana adalah **dengan mengambil nilai rata-rata komponen dengan nilai tertinggi dan terendah:**

grayscale = min(R,G,B)+max(R,G,B)/2

**Kita dapat dengan mudah melihat bahwa metode ini menghadirkan kelemahan yang sangat serius karena satu komponen RGB tidak digunakan.** Ini jelas merupakan masalah karena jumlah cahaya yang dilihat mata kita bergantung pada ketiga warna dasar.

<p align="center"><img src="img/lightness.PNG" alt="halftoning" width="500px">

* ## Average Method
Cara lain adalah dengan **mengambil nilai rata-rata dari ketiga komponen (merah, hijau, dan biru) sebagai nilai skala abu-abu:**

grayscale = R+G+B/3

Meskipun sekarang kita memperhitungkan semua komponen, **metode rata-rata juga bermasalah karena memberikan bobot yang sama untuk setiap komponen.** Berdasarkan penelitian tentang penglihatan manusia, kita tahu bahwa mata kita bereaksi terhadap setiap warna dengan cara yang berbeda. **Secara khusus, mata kita lebih sensitif terhadap hijau, lalu merah, dan akhirnya biru.** Oleh karena itu, bobot dalam persamaan di atas harus berubah.

<p align="center"><img src="img/average.PNG" alt="halftoning" width="500px">

* ## Luminosity Method
Metode terbaik adalah metode luminositas yang berhasil memecahkan masalah dari metode sebelumnya.

Berdasarkan pengamatan di atas, kita harus mengambil rata-rata tertimbang dari komponen. **Kontribusi warna biru pada nilai akhir harus berkurang, dan kontribusi warna hijau harus meningkat. Setelah beberapa percobaan dan analisis yang lebih mendalam, peneliti menyimpulkan dalam persamaan di bawah ini:**

grayscale = 0.3 * R + 0.59 * G + 0.11 * B

<p align="center"><img src="img/luminosity.PNG" alt="halftoning" width="500px">

# Source Code

<p align="center"><img src="img/code.PNG" alt="halftoning" width="500px">

# Halftoning
<p align="justify">Halftoning atau halftoning analog adalah proses yang mensimulasikan nuansa abu-abu dengan memvariasikan ukuran titik-titik hitam kecil yang diatur dalam pola yang teratur. Teknik ini digunakan dalam printer, serta industri penerbitan. Jika Anda memeriksa sebuah foto di koran, Anda akan melihat bahwa gambar itu terdiri dari titik-titik hitam meskipun tampaknya terdiri dari abu-abu. Hal ini dimungkinkan karena integrasi spasial yang dilakukan oleh mata kita. Mata kita memadukan detail halus dan merekam intensitas keseluruhan [1]. Halftoning digital mirip dengan halftoning di mana gambar didekomposisi menjadi kotak sel halftone. Elemen (atau titik yang digunakan halftoning dalam mensimulasikan nuansa abu-abu) dari sebuah gambar disimulasikan dengan mengisi sel halftone yang sesuai. Semakin banyak jumlah titik hitam dalam sel halftone, semakin gelap sel tersebut. Misalnya, pada Gambar 4, sebuah titik kecil yang terletak di tengah disimulasikan dalam halftoning digital dengan mengisi sel halftone tengah; demikian juga, titik ukuran sedang yang terletak di sudut kiri atas disimulasikan dengan mengisi empat sel di sudut kiri atas. Titik besar yang menutupi sebagian besar area pada gambar ketiga disimulasikan dengan mengisi semua sel halftone.

<p align="center"><img src="img/halftoning.png" alt="halftoning" width="200px">

    Gambar 4.1 Contoh halftoning digital

# Patterning
<p align="justify">Pola adalah yang paling sederhana dari tiga teknik untuk menghasilkan gambar halftoning digital. Ini menghasilkan gambar yang memiliki resolusi spasial lebih tinggi daripada gambar sumber. Jumlah sel halftone citra keluaran sama dengan jumlah piksel citra sumber. Namun, setiap sel halftone dibagi lagi menjadi kotak 4x4. Setiap nilai piksel input diwakili oleh jumlah kotak terisi yang berbeda dalam sel halftone. Karena kisi 4x4 hanya dapat mewakili 17 tingkat intensitas yang berbeda, gambar sumber harus dikuantisasi. Gambar 4.2 menunjukkan matriks pola rekursif Rylander, yang akan digunakan dalam daftar 4.1, dan contoh operasi pola.

<p align="center"><img src="img/patterning1.png" alt="pola rekrusif" width="200px">

    Gambar 4.2 Matriks pola rekursif Rylander

<p align="center"><img src="img/patterning2.png" alt="Operasi Patterning" width="200px">

    Gambar 4.3 Operasi Patterning

NAMA

pattern - menghasilkan gambar halftoning digital dari gambar input melalui pola.

RINGKASAN

pola(nama_file_input, nama_file_output)

KETERANGAN

<p align="justify">pattern menghasilkan gambar halftoning digital dari gambar input menggunakan teknik pola. Pola program membaca gambar input, mengkuantisasi nilai piksel, dan memetakan setiap piksel ke pola yang sesuai. Gambar yang dihasilkan 16 kali lebih besar dari aslinya. Gambar yang dihasilkan ditulis ke file output sebagai file TIFF. Sebuah kata peringatan: "pola" membutuhkan banyak perhitungan, gambar berukuran kurang dari 100x100 direkomendasikan.

CONTOH

pola('PAINTER.TIF', 'pa_ptr.tif')

Contoh ini menghasilkan gambar halftoning digital dari PAINTER menggunakan teknik pola (Gambar 4.4)

<p align="center"><img src="img/patterning3.png" alt="original" width="200px">
a. Original PAINTER

<p align="center"><img src="img/patterning4.png" alt="halftoning via patterning" width="250px">
b. Digital halftoning image of PAINTER via patterning

    Figure 4.4 Digital halftoning via patterning

# Dithering
<p align="justify">Teknik lain yang digunakan untuk menghasilkan gambar halftoning digital adalah dithering. Tidak seperti pola, dithering membuat gambar keluaran dengan jumlah titik yang sama dengan jumlah piksel pada gambar sumber. Dithering dapat dianggap sebagai thresholding gambar sumber dengan matriks gentar. Matriks diletakkan berulang kali di atas gambar sumber. Dimanapun nilai piksel gambar lebih besar dari nilai dalam matriks, titik pada gambar output diisi. Masalah dithering yang terkenal adalah menghasilkan artefak pola yang diperkenalkan oleh matriks ambang batas tetap. Gambar 4.5 menunjukkan contoh operasi dithering.

<p align="center"><img src="img/dithering.png" alt="Operasi Dithering" width="500px">

    Gambar 4.5 Operasi dithering

    Listing 4.2 adalah implementasi MATLAB dari proses dithering.

<br>
<br>
<br>

# MENENTUKAN POLA PATTERNING

Pattern atau pola dari analisis teknikal adalah kondisi (secara keseluruhan) yang menggambarkan situasi pasar dan menjelaskan tindakan yang telah diambil oleh trader.

Langkah aturan pola patterning :

 * Growth Sequence
 * Titik dimulai di tengah
 * intensitas tertentu harus berdekatan
 * Hindari pola simetri
 * Piksel yang aktif dihindari

Contoh pola patterning 2x2 :

<p align="center"><img src="https://www.cs.princeton.edu/courses/archive/fall95/cs426/lectures/04-Images/Ht1.gif" alt="Operasi Dithering" width="500px">


# MENENTUKAN MATRIKS DITHER ATAU MATRIKS TRESHOLD

**Matriks Threshold**

Thersholding merupakan salah satu metode sederhana dalam transformasi citra dari citra grayscale untuk membentuk citra biner, sebuah citra digital yang hanya memiliki dua kemungkinan warna pixelnya hitam dan putih

<br>

Halftoning: implementasi berdasarkan matriks acak

<p align="center"><img src="https://t1.daumcdn.net/cfile/tistory/99F32C385BAA1F881F" alt="Operasi Dithering" width="500px">

<br>

Matriks Threshold acak ditentukan dan dibandingkan dengan file gambar, Tone > Th sisi 1 adalah output, sisi berlawanan 0 adalah output.

<p align="center"><img src="https://t1.daumcdn.net/cfile/tistory/991D86355BAA20A01C" width="500px">

<br>

ex) Karena D1 adalah k=1, 2^(8-2) = 64 dalam citra 8-bit 

<p align="center"><img src="https://t1.daumcdn.net/cfile/tistory/99F6B9375BAA20F921" width="500px">

<br>

D2 ditambahkan ke D1 dengan menghitung rumus di atas

<p align="center"><img src="https://t1.daumcdn.net/cfile/tistory/991408365BAA21FD32" width="500px">

<br>

Penggunaan matriks dithering

Dithering setelah membuatnya menjadi matriks yang seragam

Untuk membagi dengan 4 tingkat, bagi 4-1 menjadi tiga -> bagi dengan 85

<p align="center"><img src="https://t1.daumcdn.net/cfile/tistory/99FF70415BAA261609" width="500px">

Setelah itu, seperti pada gambar di atas, P(i,j) mengurangi nilai yang diperoleh dengan mengalikan nilai terkuantisasi dengan 85 lagi dari nilai gambar aslinya, dan jika nilai yang dikurangi lebih besar dari matriks dithering, itu adalah 1, jika itu kurang, itu adalah 0, dan kemudian nilai ini ditambahkan ke nilai terkuantisasi lagi

-> Alasan untuk membagi menjadi tiga diberikan di sini, karena ada kasus ketika menambahkan 1 - Pada akhirnya, ini dinyatakan sebagai tingkat 4

<br>
<br>
<br>

# Referensi 

Tautan 1 :

https://www.baeldung.com/cs/convert-rgb-to-grayscale

Tautan 2 :

https://people.ece.ubc.ca/irenek/techpaps/introip/manual04.html

Tautan 3 :

https://www.cs.princeton.edu/courses/archive/fall95/cs426/lectures/04-quantization.html

Tautan 4 :

https://giantpark197cm.tistory.com/13