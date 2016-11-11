findCont f [] err = err
findCont f (x:xs) err = if f x then x else findCont f xs err
findInLists [] f err = err
findInLists (x:xs) f err = findCont f x (findInLists xs f err)