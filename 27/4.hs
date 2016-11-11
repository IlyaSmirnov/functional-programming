find cond [] = []
find cond (x:xs) = if cond x then [x] else find cond xs
f xs = let tmp = find (<5) xs ++ find (>10) xs ++ find (/=7) xs
       in if length tmp == 3
          then [sum tmp]
          else []