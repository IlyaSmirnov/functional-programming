findMajor xs = let m = maximum xs
               in if (m > (sum xs) - m)
               then Just m
               else Nothing