{-

Penyelesaian   masalah   didasari   atas   aplikasi   dari   fungsi-fungsi tersebut. 
Jadi  dasar  pemecahan  persoalan  adalah transformasional.  Semua  kelakuan program 
adalah  suatu  rantai  transformasi  dari  sebuah  keadaan  awal  menuju  ke  suatu
rantai keadaan akhir, yang mungkin melalui keadaan antara, melalui aplikasi fungsi.

-- Diktat Fungsional, oleh Inggriani Liem.

-}


{-

TEMPLATE teks program dalam notasi fungsional adalah sebagai berikut.

-- [[ JUDUL PROGRAM ]]
{- Deskripsi program tsb bla bla lorem ipsum bla bla -}

-- DEFINISI DAN SPESIFIKASI
fungsi :: domain -> range, untuk Daspro biasanya pakai antara Int, Float, Char, Bool, [Int], [Float], dan [Char]

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

{-

Aku pakai interpreter di HackerRank biar cepat + karena aku sudah familiar dengan websitenya.

Ini template yang aku pakai buat I/O-nya. Pakai "Use custom input".

FUNGSI :: domain -> range
FUNGSI a --b --c = ...

main = do
    val1 <- readLn
    --val2 <- readLn
    --val3 <- readLn
    let res = FUNGSI val1 --val2 --val3
    print res

-}
