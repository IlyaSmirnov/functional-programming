find g [] = Nothing
find g (x:xs) = if g x then Just x else find g xs
f xs = do x <- find (<5) xs
          y <- find (>10) xs
          z <- find (/=7) xs
          return (x + y + z)

          