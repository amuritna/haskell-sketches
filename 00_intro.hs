{-

Penyelesaian   masalah   didasari   atas   aplikasi   dari   fungsi-fungsi tersebut.  Jadi  dasar  pemecahan  persoalan  adalah transformasional.  Semua  kelakuan program  adalah  suatu  rantai  transformasi  dari  sebuah  keadaan  awal  menuju  ke  suatu rantai keadaan akhir, yang mungkin melalui keadaan antara, melalui aplikasi fungsi.

-- Diktat Fungsional, oleh Inggriani Liem.

-}


{-

TEMPLATE teks program dalam notasi fungsional adalah sebagai berikut.

-- [[ JUDUL PROGRAM ]]
{- Deskripsi program tsb bla bla lorem ipsum bla bla -}

-- DEFINISI DAN SPESIFIKASI
fungsi :: domain -> range, untuk Daspro biasanya pakai antara Int, Char, Bool, [Int], dan [Char]

-- REALISASI
fungsi = ...

-- APLIKASI
-- fungsi(a) 
-- hasil dari fungsi(a)
-- fungsi(b)
-- hasil dari fungsi(b)

-}

-- CONTOHNYA adalah sebagai berikut.

-- JADIIN ABSOLUT
-- DEFINISI DAN SPESIFIKASI
jadiinAbs :: Int -> Int
{- Fungsi ini mengubah inputnya, x, menjadi |x|. -}

-- REALISASI
jadiinAbs x
    | x < 0 = x*(-1)
    | otherwise = x

-- APLIKASI
-- jadiinAbs -5
-- 5
-- jadiinAbs 10
-- 10
-- jadiinAbs 0
-- 0
