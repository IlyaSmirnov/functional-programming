checkMyRules xs = checkMyRules' xs 1
checkMyRules' [] _ = True
checkMyRules' (x:xs) i = if (((i `mod` 7 > 0) && (i `mod` 7 <= 5) && (x <= 300)) || (((i `mod` 7 == 0)||(i `mod` 7 == 6))&&(x <= 1000)))
                       then checkMyRules' xs (i + 1)
                       else False