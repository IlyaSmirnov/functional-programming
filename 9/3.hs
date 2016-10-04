myfoldl f e [] = e
myfoldl f e (x:xs) = myfoldl f (e `f` x) xs