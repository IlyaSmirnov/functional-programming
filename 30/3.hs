(>>>=) (val, price) f1 = let (res, sum) = f1 val
                         in (res, sum + price)
return1 val = (val, 0) 
sin39 x = (sin x, 2)
exp39 x = (exp x, 5)
f x = 
  sin39 x >>>= \y ->
  exp39 x >>>= \z ->
  return1 (y+z)
--три