nfive 1 = 5
nfive n =  10 * (nfive (n - 1)) + 5
fives = map (nfive) [1..]