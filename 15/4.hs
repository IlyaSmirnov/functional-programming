f' (f, c) cn = (f, c + cn)

calculate (fs) x = calculate' (init fs) ((last fs) x)
calculate' (f:fs) (x, c) = calculate' (init (f:fs)) (f' (last (f:fs) x) (c))
calculate' [] (x, y) = (x, y)