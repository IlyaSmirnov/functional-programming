countEven xs = foldr (\x res->if (x `mod` 2 == 0) then 1 + res else res) 0 (xs)
countEven1 xs = length (filter (\x->x `mod` 2 == 0) xs)