data Tree = Empty |
            Node Integer Tree Tree
              deriving Show
foldTree f e Empty = e
foldTree f e (Node value left right) = value `f` (foldTree f e left) `f` (foldTree f e right)