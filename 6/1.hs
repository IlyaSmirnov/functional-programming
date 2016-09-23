data Point = Point (Integer, Integer)
distance (Point (x1, y1)) (Point (x2, y2)) = sqrt((fromIntegral((x1 - x2)^2 + (y1 - y2)^2)))
isosc (x1, y1) (x2, y2) (x3, y3) = let p1 = Point (x1, y1)
                                       p2 = Point (x2, y2)
                                       p3 = Point (x3, y3)
                                   in if ((distance p1 p2 == distance p1 p3) || (distance p1 p2 == distance p2 p3) || (distance p2 p3 == distance p1 p3)) 
                                      then True 
                                      else False	