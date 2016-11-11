data Scheme a = R a | S (Scheme a) (Scheme a) | P (Scheme a) (Scheme a) 
    deriving Show

instance Functor Scheme where fmap f (R a) = R (f a)
                              fmap f (S a b) = S (fmap f a) (fmap f b)
                              fmap f (P a b) = P (fmap f a) (fmap f b)
                                  
doubleAll sc = fmap (\x->2 * x) sc