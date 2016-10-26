makeBrackets (x:xs) = ("[" ++ x ++ "]") : makeBrackets xs
brackets = "[]" : makeBrackets brackets