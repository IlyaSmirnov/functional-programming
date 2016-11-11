pow1 n = [1..n] >>= \x -> [1..x] >>= \y -> return (y^y)
pow2 n = do x <- [1..n]
            y <- [1..x]
            return (y^y)