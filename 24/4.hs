contsins a [] = False
contsins a (x:xs) = if (a == x) then True else contsins a xs
findSame [x] = (0, False)
findSame (x:xs) = if (contsins x xs) then (x, True) else findSame xs