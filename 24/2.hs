(<=<) f g = \x -> if (g x == Nothing) 
                  then Nothing
                  else let Just y = g x
                       in f y