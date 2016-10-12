data Tree = Empty |
            Node Integer Tree Tree
              deriving Show
foldTree f e (Node val l r) = let
                                resl = foldTree f e l
                                resr = foldTree f e r
                              in f val resl resr
foldTree f e Empty = e

mapTree f (Node val l r) = Node (f val) (mapTree f l) (mapTree f r) 
mapTree f Empty = Empty

triplePlus a b c = a + b + c
sumOdd tr = foldTree (triplePlus) (0) (mapTree (\x->if x `mod` 2 == 1 then x else 0) tr)