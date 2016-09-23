data Tree = Empty |
            Node Integer Tree Tree
              deriving Show
height tree = height' tree
height' Empty = -1
height' (Node _ left right) = (max (height' left) (height' right)) + 1