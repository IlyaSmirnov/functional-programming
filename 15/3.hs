data Scheme a = P (Scheme a) (Scheme a) |
                S (Scheme a) (Scheme a) | 
                R Double
                  deriving Show
foldScheme fP fS fR (R value) = fR value
foldScheme fP fS fR (S a b) = let resa = foldScheme fP fS fR a
                                  resb = foldScheme fP fS fR b
                              in fS (resa) (resb)
foldScheme fP fS fR (P a b) = let resa = foldScheme fP fS fR a
                                  resb = foldScheme fP fS fR b
                              in fP (resa) (resb)
test1 = foldScheme (\x y -> 1 / (1 / x + 1 / y)) (+) (\x->x) ((S (P (R 2) (R 2)) (R 2)))
test2 = foldScheme (max) (max) (\x->x) ((S (P (R 2) (R 2)) (R 2)))
test3 = foldScheme (+) (+) (\x ->1) ((S (P (R 2) (R 2)) (R 2)))