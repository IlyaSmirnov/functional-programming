zipListConst x ys = map (\y -> (x, y)) ys
cartesian xs ys = xs >>= (\x -> zipListConst x ys)