data Equastion a = Num a | Add (Equastion a) (Equastion a) | Mult (Equastion a) (Equastion a) | X
    deriving Show
eval X x = x
eval (Num a) x = a
eval (Add a b) x = (eval a x) + (eval b x)
eval (Mult a b) x = (eval a x) * (eval b x)