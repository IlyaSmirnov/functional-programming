data Scheme = Resistance Double  |
              Parallel Scheme Scheme |
              NotParallel Scheme Scheme
                deriving Show
totalResistance (Resistance value) = value
totalResistance (Parallel first second) = 1 / (1 / (totalResistance first) + 1 / (totalResistance second))
totalResistance (NotParallel first second) = totalResistance first + totalResistance second
test = totalResistance  (NotParallel (Parallel (Resistance 2) (Resistance 2)) (Resistance 2))