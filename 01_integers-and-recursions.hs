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

------------

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

------------

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

---------

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

---------

-- CARI KELIPATAN
-- DEFINISI DAN SPESIFIKASI
nbKelipatanX :: Int -> Int -> Int -> Int
{- Berdasarkan input M, N, dan X, mencari banyak kemunculan kelipatan x pada [m, n]. -}

-- REALISASI
nbKelipatanX m n x
    | (m == n) =
        if (mod n x == 0) then 0
        else 1
    | otherwise =
        if (mod n x == 0) then (1 + (nbKelipatanX m (n - 1) x))
        else (nbKelipatanX m (n - 1) x)

-- APLIKASI
-- nbKelipatanX 5 10 3
-- 2
-- nbKelipatanX 2 8 2
-- 4
-- nbKelipatanX 5 5 3
-- 0

---------

-- PENJUMLAHAN SEMUA ELEMEN DALAM LIST
-- DEFINISI DAN SPESIFIKASI
sumInts :: [Int] -> Int
{- Menjumlahkan semua elemen yang ada di list L. -}

-- REALISASI
sumInts l
    | isEmpty l = 0 -- basis
    | isOneElmt l = head l -- basis
    | otherwise = head l + sumInts (tail l) --rekurens
    
-- APLIKASI
-- sumInts [1, 2, 3, 4]
-- 10
-- sumInts [2, 2, 2, 2]
-- 8
 
---------
 
-- GABUNG LIST (kalau yg ini sudah lolos autograder 100%)
-- DEFINISI DAN SPESIFIKASI
gabungList :: [Int] -> [Int] -> [Int]
{- Menggabungkan dua list. -}

-- REALISASI
inList :: Int -> [Int] -> [Int] 
inList new lst
	| isEmpty lst = konso new lst 
	| (new <= head lst) = konso new lst 
	| otherwise =
		konso (head lst) (inList new (tail lst))
		
gabungList l1 l2
	| isEmpty l1 = l2
	| otherwise =
		gabungList (tail l1) (inList (head l1) l2)

---------

-- FILTER GANJIL (lolos autograder 100%)
-- DEFINISI DAN SPESIFIKASI
filterGanjil :: [Int] -> [Int]
{- Hanya mengembalikan elemen list yang ganjil, sebagai list. -}

-- REALISASI
filterGanjil li
	| isEmpty li = []
    | (mod (head li) 2 == 1) = konso (head li) (filterGanjil (tail li))
	| otherwise = filterGanjil (tail li)

---------

-- IS MEMBER (lolos autograder 100% juga hore)
-- DEFINISI DAN SPESIFIKASI
isMember :: [Int] -> Int -> Bool
{- Berdasarkan input list L dan integer N, mengembalikan apakah N ada dalam L. -}

-- REALISASI
isMember l x
	| isEmpty l = False
	| isOneElmt l = ((head l) == x)
	| otherwise =
		if ((head l) == x) then True
		else isMember (tail l) x








