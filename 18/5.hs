superMap f [] = []
superMap f (x:xs) = let ress = f x
                    in (ress) ++ (superMap f xs)