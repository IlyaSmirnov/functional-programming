bigCos x = head (filter (>x) (map (cos) [1, 2..]))