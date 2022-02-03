nbKelipatanX :: Int -> Int -> Int -> Int
nbKelipatanX n m x
    -- basis
    | n > m = 0
    | n == m =
        if mod n x == 0 then
            1
        else
            0
    -- rekursi
    | otherwise =
        if mod n x == 0 then
            1 + nbKelipatanX (n+x) m x
        else
            nbKelipatanX (1+n) m x
 
-------------------------------------
 
isEmpty :: [Int] -> Bool
isEmpty = null
 
isOneElmt :: [Int] -> Bool
isOneElmt lst = (not (isEmpty lst)) && isEmpty (tail lst)
 
isAllGanjil :: [Int] -> Bool
isAllGanjil lst
    | isEmpty lst = True
    | otherwise = mod (head lst) 2 == 1 && isAllGanjil (tail lst)
 
getSmallest :: [Int] -> Int
getSmallest lst
    | isOneElmt lst = head lst
    | otherwise =
        let
            s = getSmallest (tail lst)
        in
            if head lst < s then
                head lst
            else
                s
 
delElement :: Int -> [Int] -> [Int]
delElement n lst
    | isEmpty lst = lst
    | otherwise =
        if head lst == n then
            -- delElement n (tail lst)
            tail lst
        else
            [head lst] ++ delElement n (tail lst)
 
sortList :: [Int] -> [Int]
sortList lst
    | isEmpty lst || isOneElmt lst = lst
    | otherwise =
        let
            smol = getSmallest lst
        in
            [smol] ++ sortList (delElement smol lst)
 
 
-------------------------------------
 
sumInteger :: Int -> Int -> (Int -> Bool) -> Int
sumInteger m n f
    -- basis
    | m > n = 0
    -- rekurens
    | otherwise =
        let
            x = sumInteger (m+1) n f
        in
            if f m then
                m + x
            else
                x
