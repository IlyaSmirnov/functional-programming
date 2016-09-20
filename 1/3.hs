sumsqr n = sumsqr' n (n * n) n
sumsqr' i j 1 = i * i / j
sumsqr' i j n = sumsqr' (i + n - 1) (j + (n - 1) * (n - 1)) (n - 1)

