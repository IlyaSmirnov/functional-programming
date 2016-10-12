data Scheme = Resistance Double  |
              Parallel Scheme Scheme |
              NotParallel Scheme Scheme
                deriving Show
foldScheme f e (Parallel first second) = let
                                resl = foldScheme f e first
                                resr = foldScheme f e second
                              in f (1/resl) (1/resr)
foldScheme f e (Resistance value) = value
foldScheme f e (NotParallel first second) = let
                                resl = foldScheme f e first
                                resr = foldScheme f e second
                              in f (resl) (resr)
test1 = foldScheme (+) 0 ((NotParallel (Parallel (Resistance 2) (Resistance 2)) (Resistance 2)))
test2 = foldScheme (max) 0 ((NotParallel (Parallel (Resistance 2) (Resistance 2)) (Resistance 2)))