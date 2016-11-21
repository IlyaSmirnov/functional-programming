data Scheme a = R a | S (Scheme a) (Scheme a) | P (Scheme a) (Scheme a) 
    deriving Show
(>>>=) (R a) f = f a
(>>>=) (S a b) f = S (a >>>= f) (b >>>= f)
(>>>=) (P a b) f = P (a >>>= f) (b >>>= f)