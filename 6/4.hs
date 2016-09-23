data Candy = Cake String Integer |
             Sweets String Integer Integer
               deriving Show
totalPrice [] = 0
totalPrice ((Cake _ value):candies) = value + totalPrice(candies)
totalPrice ((Sweets _ value amount):candies) = value * amount + totalPrice(candies)                         
test = totalPrice [(Cake "afsd" 170), (Sweets "asf" 15 17), (Sweets "asasf" 40 3), (Cake "afdggfgfd" 455)]