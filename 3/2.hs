sumprod (x1:x2:[]) = x1 * x2
sumprod (x1:x2:xs) = x1 * x2 + sumprod(x2:xs)
