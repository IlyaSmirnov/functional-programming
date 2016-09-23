listOfPairs (x:xs) = zip (x:xs) xs
sumprod xs = sum (zipWith (*) (map (fst) (listOfPairs xs))  (map (snd) (listOfPairs xs)))