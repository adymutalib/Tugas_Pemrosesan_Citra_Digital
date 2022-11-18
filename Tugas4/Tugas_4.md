## Nama : ADY MUTALIB
## Nim : 2110131110003
## Matkul : Pemrosesan Citra Digital
## Dosen Pengampu : Dr. Harja Santana Purba, M.Kom, dan Novan Alkaf B. S. S. Kom., M.T


### Tugas membuat Pseudo Code Patterning, Ditthering, Bit Plane Slacing, dan Histogram equalization



#### **Pseudo Code Patterning**

sebagai berikut
```javascript
        rentang = level/banyak pola

        pola 1 = [0,0,0; 0,0,0; 0,0,0]
        pola 2 = [0,0,0; 0,0,0; 0,0,1]
        pola 3 = [1,0,0; 0,0,0; 0,0,1]
        pola 4 = [1,0,1; 0,0,0; 0,0,1]
        pola 5 = [1,0,1; 0,0,0; 1,0,1]
        pola 6 = [1,0,1; 0,0,0; 1,1,1]
        pola 7 = [1,0,1; 1,0,0; 1,1,1]
        pola 8 = [1,1,1; 1,0,0; 1,1,1]
        pola 9 = [1,1,1; 1,0,1; 1,1,1]
        pola 10 = [1,1,1; 1,1,1; 1,1,1]

        gambar = []

        for(x = 1; x < gambar.length; x++){
            for(y = 1; y < gambar.length; y++){
                if(gambar[x,y] >=0 and gambar[x,y] <= 26){
                    gambar[x,y] = pola 1
                }
                else if(gambar[x,y] >=27 and gambar[x,y] <= 52){
                    gambar[x,y] = pola 2
                }
                else if(gambar[x,y] >=53 and gambar[x,y] <= 78){
                    gambar[x,y] = pola 3
                }
                else if(gambar[x,y] >=79 and gambar[x,y] <= 104){
                    gambar[x,y] = pola 4
                }
                else if(gambar[x,y] >=105 and gambar[x,y] <= 130){
                    gambar[x,y] = pola 5
                }
                else if(gambar[x,y] >=131 and gambar[x,y] <= 156){
                    gambar[x,y] = pola 6
                }
                else if(gambar[x,y] >=157 and gambar[x,y] <= 182){
                    gambar[x,y] = pola 7
                }
                else if(gambar[x,y] >=183 and gambar[x,y] <= 208){
                    gambar[x,y] = pola 8
                }
                else if(gambar[x,y] >=209 and gambar[x,y] <= 234){
                    gambar[x,y] = pola 9
                }
                else if(gambar[x,y] >=235 and gambar[x,y] <= 260){
                    gambar[x,y] = pola 10
                }
            }
        }
```


### **Pseudo Code Dithering**

Sebagai berikut

```javascript
    Trashold = [100 150 ; 200 50]

    for(x = 1; x < gambar.length; i++){
        if(x%2 == 1){
            for(y = 1; y < gambar.length; y++){
                if(y%2 == 1){
                    if(gambar[x,y] >= Trashold[1,1]){
                        gambar[x,y] = 1;
                    }
                    else{
                        gambar[x,y] = 0;
                    }
                }
                else{
                    if(gambar[x,y] >= Trashold[1,2]){
                        gambar[x,y] = 1;
                    }
                    else{
                        gambar[x,y] = 0;
                    }
                }
            }
        }
        else{
            for(y = 1; y < gambar.length; y++){
                if(y%2 == 1){
                    if(gambar[x,y] >= Trashold[2,1]){
                        gambar[x,y] = 1;
                    }
                    else{
                        gambar[x,y] = 0;
                    }
                }
                else{
                    if(gambar[x,y] >= Trashold[2,2]){
                        gambar[x,y] = 1;
                    }
                    else{
                        gambar[x,y] = 0;
                    }
                }
            }
        }
    }
```

### **Pseudo Code Bit Plane Slacing**

Sebagai Berikut

```Java
    for (int i = 0; i < x.length ; i++){
            if(x[i] >= 128){
                int biner = x[i] - 128;
                if(biner >= 64){
                    biner -= 64;
                    if(biner >= 32){
                        biner -= 32;
                        if(biner >= 16){
                            biner -= 16;
                            if(biner >= 8){
                                biner -= 8;
                                if(biner >= 4){
                                    biner -= 4;
                                    if(biner >= 2){
                                        biner -= 2;
                                        if(biner >= 1){
                                            biner -= 1;
                                            x[i] = 11111111;
                                        }
                                        else{
                                            x[i] = 11111110;
                                        }
                                    }
                                    else if(biner >= 1){
                                        biner -= 1;
                                        x[i] = 11111101;
                                    }
                                    else{
                                        x[i] = 11111100;
                                    }
                                }
                                else if(biner >= 2){
                                    biner -= 2;
                                    if(biner >= 1){
                                        biner -= 1;
                                        x[i] = 11111011;
                                    }
                                    else{
                                        x[i] = 11111010;
                                    }
                                }
                                else if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 11111001;
                                }
                                else{
                                    x[i] = 11111000;
                                }
                            }
                            else if(biner >= 4){
                                    biner -= 4;
                                    if(biner >= 2){
                                        biner -= 2;
                                        if(biner >= 1){
                                            biner -= 1;
                                            x[i] = 11110111;
                                        }
                                        else{
                                            x[i] = 11110110;
                                        }
                                    }
                                    else if(biner >= 1){
                                        biner -= 1;
                                        x[i] = 11110101;
                                    }
                                    else{
                                        x[i] = 11110100;
                                    }
                                }
                            else if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 11110011;
                                }
                                else{
                                    x[i] = 11110010;
                                }
                                }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 11110001;
                            }
                            else{
                                x[i] = 11110000;
                            }
                        }
                        else if(biner >= 8){
                            biner -= 8;
                            if(biner >= 4){
                                biner -= 4;
                                if(biner >= 2){
                                    biner -= 2;
                                    if(biner >= 1){
                                        biner -= 1;
                                        x[i] = 11101111;
                                    }
                                    else{
                                        x[i] = 11101110;
                                    }
                                }
                                else if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 11101101;
                                }
                                else{
                                    x[i] = 11101100;
                                }
                            }
                            else if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 11101011;
                                }
                                else{
                                    x[i] = 11101010;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 11101001;
                            }
                            else{
                                x[i] = 11101000;
                            }
                        }
                        else if(biner >= 4){
                                biner -= 4;
                                if(biner >= 2){
                                    biner -= 2;
                                    if(biner >= 1){
                                        biner -= 1;
                                        x[i] = 11100111;
                                    }
                                    else{
                                        x[i] = 11100110;
                                    }
                                }
                                else if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 11100101;
                                }
                                else{
                                    x[i] = 11100100;
                                }
                            }
                        else if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 11100011;
                            }
                            else{
                                x[i] = 11100010;
                            }
                            }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 11100001;
                        }
                        else{
                            x[i] = 11100000;
                        }
                    }
                    else if(biner >= 16){
                        biner -= 16;
                        if(biner >= 8){
                            biner -= 8;
                            if(biner >= 4){
                                biner -= 4;
                                if(biner >= 2){
                                    biner -= 2;
                                    if(biner >= 1){
                                        biner -= 1;
                                        x[i] = 11011111;
                                    }
                                    else{
                                        x[i] = 11011110;
                                    }
                                }
                                else if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 11011101;
                                }
                                else{
                                    x[i] = 11011100;
                                }
                            }
                            else if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 11011011;
                                }
                                else{
                                    x[i] = 11011010;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 11011001;
                            }
                            else{
                                x[i] = 11011000;
                            }
                        }
                        else if(biner >= 4){
                                biner -= 4;
                                if(biner >= 2){
                                    biner -= 2;
                                    if(biner >= 1){
                                        biner -= 1;
                                        x[i] = 11010111;
                                    }
                                    else{
                                        x[i] = 11010110;
                                    }
                                }
                                else if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 11010101;
                                }
                                else{
                                    x[i] = 11010100;
                                }
                            }
                        else if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 11010011;
                            }
                            else{
                                x[i] = 11010010;
                            }
                            }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 11010001;
                        }
                        else{
                            x[i] = 11010000;
                        }
                    }
                    else if(biner >= 8){
                        biner -= 8;
                        if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 11001111;
                                }
                                else{
                                    x[i] = 11001110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 11001101;
                            }
                            else{
                                x[i] = 11001100;
                            }
                        }
                        else if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 11001011;
                            }
                            else{
                                x[i] = 11001010;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 11001001;
                        }
                        else{
                            x[i] = 11001000;
                        }
                    }
                    else if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 11000111;
                                }
                                else{
                                    x[i] = 11000110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 11000101;
                            }
                            else{
                                x[i] = 11000100;
                            }
                        }
                    else if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 11000011;
                        }
                        else{
                            x[i] = 11000010;
                        }
                        }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 11000001;
                    }
                    else{
                        x[i] = 11000000;
                    }	
                }
                else if(biner >= 32){
                    biner -= 32;
                    if(biner >= 16){
                        biner -= 16;
                        if(biner >= 8){
                            biner -= 8;
                            if(biner >= 4){
                                biner -= 4;
                                if(biner >= 2){
                                    biner -= 2;
                                    if(biner >= 1){
                                        biner -= 1;
                                        x[i] = 10111111;
                                    }
                                    else{
                                        x[i] = 10111110;
                                    }
                                }
                                else if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 10111101;
                                }
                                else{
                                    x[i] = 10111100;
                                }
                            }
                            else if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 10111011;
                                }
                                else{
                                    x[i] = 10111010;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 10111001;
                            }
                            else{
                                x[i] = 10111000;
                            }
                        }
                        else if(biner >= 4){
                                biner -= 4;
                                if(biner >= 2){
                                    biner -= 2;
                                    if(biner >= 1){
                                        biner -= 1;
                                        x[i] = 10110111;
                                    }
                                    else{
                                        x[i] = 10110110;
                                    }
                                }
                                else if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 10110101;
                                }
                                else{
                                    x[i] = 10110100;
                                }
                            }
                        else if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 10110011;
                            }
                            else{
                                x[i] = 10110010;
                            }
                            }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 10110001;
                        }
                        else{
                            x[i] = 10110000;
                        }
                    }
                    else if(biner >= 8){
                        biner -= 8;
                        if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 10101111;
                                }
                                else{
                                    x[i] = 10101110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 10101101;
                            }
                            else{
                                x[i] = 10101100;
                            }
                        }
                        else if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 10101011;
                            }
                            else{
                                x[i] = 10101010;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 10101001;
                        }
                        else{
                            x[i] = 10101000;
                        }
                    }
                    else if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 10100111;
                                }
                                else{
                                    x[i] = 10100110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 10100101;
                            }
                            else{
                                x[i] = 10100100;
                            }
                        }
                    else if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 10100011;
                        }
                        else{
                            x[i] = 10100010;
                        }
                        }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 10110001;
                    }
                    else{
                        x[i] = 10110000;
                    }
                }
                else if(biner >= 16){
                    biner -= 16;
                    if(biner >= 8){
                        biner -= 8;
                        if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 10011111;
                                }
                                else{
                                    x[i] = 10011110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 10011101;
                            }
                            else{
                                x[i] = 10011100;
                            }
                        }
                        else if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 10011011;
                            }
                            else{
                                x[i] = 10011010;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 10011001;
                        }
                        else{
                            x[i] = 10011000;
                        }
                    }
                    else if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 10010111;
                                }
                                else{
                                    x[i] = 10010110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 10010101;
                            }
                            else{
                                x[i] = 10010100;
                            }
                        }
                    else if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 10010011;
                        }
                        else{
                            x[i] = 10010010;
                        }
                        }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 10010001;
                    }
                    else{
                        x[i] = 10010000;
                    }
                }
                else if(biner >= 8){
                    biner -= 8;
                    if(biner >= 4){
                        biner -= 4;
                        if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 10001111;
                            }
                            else{
                                x[i] = 10001110;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 10001101;
                        }
                        else{
                            x[i] = 10001100;
                        }
                    }
                    else if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 10001011;
                        }
                        else{
                            x[i] = 10001010;
                        }
                    }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 10001001;
                    }
                    else{
                        x[i] = 10001000;
                    }
                }
                else if(biner >= 4){
                        biner -= 4;
                        if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 10000111;
                            }
                            else{
                                x[i] = 10000110;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 10000101;
                        }
                        else{
                            x[i] = 10000100;
                        }
                    }
                else if(biner >= 2){
                    biner -= 2;
                    if(biner >= 1){
                        biner -= 1;
                        x[i] = 10000011;
                    }
                    else{
                        x[i] = 10000010;
                    }
                    }
                else if(biner >= 1){
                    biner -= 1;
                    x[i] = 10000001;
                }
                else{
                    x[i] = 10000000;
                }	
            }
            else if(x[i] >= 64){
                int biner = x[i] - 64;
                if(biner >= 32){
                    biner -= 32;
                    if(biner >= 16){
                        biner -= 16;
                        if(biner >= 8){
                            biner -= 8;
                            if(biner >= 4){
                                biner -= 4;
                                if(biner >= 2){
                                    biner -= 2;
                                    if(biner >= 1){
                                        biner -= 1;
                                        x[i] = 01111111;
                                    }
                                    else{
                                        x[i] = 01111110;
                                    }
                                }
                                else if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 01111101;
                                }
                                else{
                                    x[i] = 01111100;
                                }
                            }
                            else if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 01111011;
                                }
                                else{
                                    x[i] = 01111010;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 01111001;
                            }
                            else{
                                x[i] = 01111000;
                            }
                        }
                        else if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 01110111;
                                }
                                else{
                                    x[i] = 01110110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 01110101;
                            }
                            else{
                                x[i] = 01110100;
                            }
                        }
                        else if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 01110011;
                            }
                            else{
                                x[i] = 01110010;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 01110001;
                        }
                        else{
                            x[i] = 01110000;
                        }
                    }
                    else if(biner >= 8){
                        biner -= 8;
                        if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 01101111;
                                }
                                else{
                                    x[i] = 01101110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 01101101;
                            }
                            else{
                                x[i] = 01101100;
                            }
                        }
                        else if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 01101011;
                            }
                            else{
                                x[i] = 01101010;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 01101001;
                        }
                        else{
                            x[i] = 01101000;
                        }
                    }
                    else if(biner >= 4){
                        biner -= 4;
                        if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 01100111;
                            }
                            else{
                                x[i] = 01100110;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 01100101;
                        }
                        else{
                            x[i] = 01100100;
                        }
                    }
                    else if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 01100011;
                        }
                        else{
                            x[i] = 01100010;
                        }
                    }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 01110001;
                    }
                    else{
                        x[i] = 01110000;
                    }
                }
                else if(biner >= 16){
                    biner -= 16;
                    if(biner >= 8){
                        biner -= 8;
                        if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 01011111;
                                }
                                else{
                                    x[i] = 01011110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 01011101;
                            }
                            else{
                                x[i] = 01011100;
                            }
                        }
                        else if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 01011011;
                            }
                            else{
                                x[i] = 01011010;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 01011001;
                        }
                        else{
                            x[i] = 01011000;
                        }
                    }
                    else if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 01010111;
                                }
                                else{
                                    x[i] = 01010110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 01010101;
                            }
                            else{
                                x[i] = 01010100;
                            }
                        }
                    else if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 01010011;
                        }
                        else{
                            x[i] = 01010010;
                        }
                        }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 01010001;
                    }
                    else{
                        x[i] = 01010000;
                    }
                }
                else if(biner >= 8){
                    biner -= 8;
                    if(biner >= 4){
                        biner -= 4;
                        if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 01001111;
                            }
                            else{
                                x[i] = 01001110;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 01001101;
                        }
                        else{
                            x[i] = 01001100;
                        }
                    }
                    else if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 01001011;
                        }
                        else{
                            x[i] = 01001010;
                        }
                    }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 01001001;
                    }
                    else{
                        x[i] = 01001000;
                    }
                }
                else if(biner >= 4){
                        biner -= 4;
                        if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 01000111;
                            }
                            else{
                                x[i] = 01000110;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 01000101;
                        }
                        else{
                            x[i] = 01000100;
                        }
                    }
                else if(biner >= 2){
                    biner -= 2;
                    if(biner >= 1){
                        biner -= 1;
                        x[i] = 01000011;
                    }
                    else{
                        x[i] = 01000010;
                    }
                    }
                else if(biner >= 1){
                    biner -= 1;
                    x[i] = 01000001;
                }
                else{
                    x[i] = 01000000;
                }	
            }
            else if(x[i] >= 32){
                int biner = x[i] - 32;
                if(biner >= 16){
                    biner -= 16;
                    if(biner >= 8){
                        biner -= 8;
                        if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 00111111;
                                }
                                else{
                                    x[i] = 00111110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 00111101;
                            }
                            else{
                                x[i] = 00111100;
                            }
                        }
                        else if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 00111011;
                            }
                            else{
                                x[i] = 00111010;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 00111001;
                        }
                        else{
                            x[i] = 00111000;
                        }
                    }
                    else if(biner >= 4){
                            biner -= 4;
                            if(biner >= 2){
                                biner -= 2;
                                if(biner >= 1){
                                    biner -= 1;
                                    x[i] = 00110111;
                                }
                                else{
                                    x[i] = 00110110;
                                }
                            }
                            else if(biner >= 1){
                                biner -= 1;
                                x[i] = 00110101;
                            }
                            else{
                                x[i] = 00110100;
                            }
                        }
                    else if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 00110011;
                        }
                        else{
                            x[i] = 00110010;
                        }
                        }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 00110001;
                    }
                    else{
                        x[i] = 00110000;
                    }
                }
                else if(biner >= 8){
                    biner -= 8;
                    if(biner >= 4){
                        biner -= 4;
                        if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 00101111;
                            }
                            else{
                                x[i] = 00101110;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 00101101;
                        }
                        else{
                            x[i] = 00101100;
                        }
                    }
                    else if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 00101011;
                        }
                        else{
                            x[i] = 00101010;
                        }
                    }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 00101001;
                    }
                    else{
                        x[i] = 00101000;
                    }
                }
                else if(biner >= 4){
                        biner -= 4;
                        if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 00100111;
                            }
                            else{
                                x[i] = 00100110;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 00100101;
                        }
                        else{
                            x[i] = 00100100;
                        }
                    }
                else if(biner >= 2){
                    biner -= 2;
                    if(biner >= 1){
                        biner -= 1;
                        x[i] = 00100011;
                    }
                    else{
                        x[i] = 00100010;
                    }
                    }
                else if(biner >= 1){
                    biner -= 1;
                    x[i] = 00110001;
                }
                else{
                    x[i] = 00110000;
                }
            }
            else if(x[i] >= 16){
                int biner = x[i] - 16;
                if(biner >= 8){
                    biner -= 8;
                    if(biner >= 4){
                        biner -= 4;
                        if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 00011111;
                            }
                            else{
                                x[i] = 00011110;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 00011101;
                        }
                        else{
                            x[i] = 00011100;
                        }
                    }
                    else if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 00011011;
                        }
                        else{
                            x[i] = 00011010;
                        }
                    }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 00011001;
                    }
                    else{
                        x[i] = 00011000;
                    }
                }
                else if(biner >= 4){
                        biner -= 4;
                        if(biner >= 2){
                            biner -= 2;
                            if(biner >= 1){
                                biner -= 1;
                                x[i] = 00010111;
                            }
                            else{
                                x[i] = 00010110;
                            }
                        }
                        else if(biner >= 1){
                            biner -= 1;
                            x[i] = 00010101;
                        }
                        else{
                            x[i] = 00010100;
                        }
                    }
                else if(biner >= 2){
                    biner -= 2;
                    if(biner >= 1){
                        biner -= 1;
                        x[i] = 00010011;
                    }
                    else{
                        x[i] = 00010010;
                    }
                    }
                else if(biner >= 1){
                    biner -= 1;
                    x[i] = 00010001;
                }
                else{
                    x[i] = 00010000;
                }
            }
            else if(x[i] >= 8){
                int biner = x[i] - 8;
                if(biner >= 4){
                    biner -= 4;
                    if(biner >= 2){
                        biner -= 2;
                        if(biner >= 1){
                            biner -= 1;
                            x[i] = 00001111;
                        }
                        else{
                            x[i] = 00001110;
                        }
                    }
                    else if(biner >= 1){
                        biner -= 1;
                        x[i] = 00001101;
                    }
                    else{
                        x[i] = 00001100;
                    }
                }
                else if(biner >= 2){
                    biner -= 2;
                    if(biner >= 1){
                        biner -= 1;
                        x[i] = 00001011;
                    }
                    else{
                        x[i] = 00001010;
                    }
                }
                else if(biner >= 1){
                    biner -= 1;
                    x[i] = 00001001;
                }
                else{
                    x[i] = 00001000;
                }
            }
            else if(x[i] >= 4){
                int biner = x[i] - 4;
                if(biner >= 2){
                    biner -= 2;
                    if(biner >= 1){
                        biner -= 1;
                        x[i] = 00000111;
                    }
                    else{
                        x[i] = 00000110;
                    }
                }
                else if(biner >= 1){
                    biner -= 1;
                    x[i] = 00000101;
                }
                else{
                    x[i] = 00000100;
                }
            }
            else if(x[i] >= 2){
                int biner = x[i] - 2;
                if(biner >= 1){
                    biner -= 1;
                    x[i] = 00000011;
                }
                else{
                    x[i] = 00000010;
                }
            }
            else if(x[i] >= 1){
                int biner = x[i] - 1;
                x[i] = 00000001;
            }
            else{
                x[i] = 00000000;
            }
        }
```

