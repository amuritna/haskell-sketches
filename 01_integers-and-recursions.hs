-- ROW OF ONES
-- DEFINISI DAN SPESIFIKASI
rowOfOnes :: Int -> Int
{- rowOfOnes menghasilkan sebuah bilangan dengan N digit di mana semua digitnya adalah 1, dengan syarat N > 0 -}

-- REALISASI
rowOfOnes n
    | (n == 1) = 1 --basis
    | otherwise = (rowOfOnes (n - 1) * 10) + 1 --rekurens
    
-- APLIKASI
-- rowOfOnes 5
-- 11111
-- rowOfOnes 2
-- 11
-- rowOfOnes 1
-- 1



-- PANGKAT
-- DEFINISI DAN SPESIFIKASI
pow :: Int -> Int -> Int
{- Mengembalikan a^b untuk input a dan b. -}

-- REALISASI
pow a b
    | (b == 0) = 1 --basis
    | (b == 1) = a -- basis
    | otherwise =
        (pow a (b - 1)) * a
        
-- APLIKASI
-- pow 3 2
-- 9
-- pow 2 3
-- 8 



-- DECREASING DIGITS
-- DEFINISI DAN SPESIFIKASI
decDigits :: Int -> Int
{- Menghasilkan bilangan dengan N digit di mana digit paling kiri adalah N dan digit paling kanan adalah 1, dengan digit X = digit [X-1] -1. Sebagai contoh, decDigits 3 = 321. Syarat N < 10. -}

-- REALISASI
decDigits n
    | (n == 1) = 1 --basis
    | otherwise = (decDigits (n - 1)) + ((pow 10 (n-1)) * n) --rekurens
    
-- APLIKASI
-- decDigits 3
-- 321
-- decDigits 5
-- 54321



-- LENGTH IN DIGTS
-- DEFINISI DAN SPESIFIKASI
digLen :: Int -> Int
{- Mencari tahu jumlah digit bilangan input. N > 0 -}

-- REALISASI
digLen x
    | (x < 10) = 1
    | otherwise = (digLen (div x 10)) + 1
    
-- APLIKASI
-- digLen 5
-- 1
-- digLen 11111
-- 5
-- digLen 123456789
-- 9

