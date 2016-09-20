minlist (x:[]) = x
minlist (x:xs) = minlist' xs x
minlist' (x:[]) min = if x < min
  then x
  else min
minlist' (x:xs) min = if x < min
  then minlist' xs x
  else minlist' xs min
