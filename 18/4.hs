(<=<) f g = \x -> let (res, sum) = g x
                      (res1, sum1) = f res
                  in (res1, sum + sum1)
calculate fs = foldr (<=<) (\x->(x, 0)) fs