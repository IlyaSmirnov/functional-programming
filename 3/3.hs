check _ [] = False
check cond (x:[]) = if (cond x) == True
  then True
  else False
check cond (x:xs) = if (cond x) == True
  then True
  else check cond xs
