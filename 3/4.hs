contains a (x:[]) = if a == x
  then True
  else False
contains a (x:xs) = if a == x
  then True
  else contains a xs

lastDigit x = if (x < 10) 
  then x
  else x `mod` 10

sameDigits (x:xs) = sameDigits' (xs) ((lastDigit x) : [])
sameDigits' (x:[]) (lastDigits) = if contains (lastDigit x) (lastDigits)
  then True
  else False
sameDigits' (x:xs) (lastDigits) = if contains (lastDigit x) (lastDigits)
  then True
  else sameDigits' (xs) ((lastDigit x) : lastDigits)
