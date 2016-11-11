data Rat = Rat Integer Integer
    deriving (Show)
    

instance Eq Rat where
    Rat a b == Rat c d = a == c && b == d

instance Ord Rat where
    Rat a b < Rat c d = (signum a) * (signum b) * abs (a *  d) < (signum c) * (signum d) * abs (b * c)
    Rat a b <= Rat c d = signum a * signum b * (a * d) <= signum c * signum d * (b * c)

instance Num Rat where
    Rat a b + Rat c d = Rat (a * d + b * c) (b * d)
    Rat a b * Rat c d = Rat (a * c) (b * d)
    abs (Rat a b) = if (a * b < 0) then Rat (-a) b else Rat a b
    signum (Rat a b) = if a * b < 0 then -1 else 1
    fromInteger a = Rat a 1
    negate (Rat a b) = Rat (-a) (-b)