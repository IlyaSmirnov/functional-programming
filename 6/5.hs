repeatFunc' (_) (1) (f) = f
repeatFunc' (f) (n) (g) = repeatFunc' (f) (n - 1) (g.f)
repeatFunc (f) (n) = repeatFunc' (f) (n) (f)