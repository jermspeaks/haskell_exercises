-- Problem 1
-- Rewrite functionC x y = if (x > y) then x else y
functionC x y =
  case z of
    True -> x
    False -> y
  where z = x > y

-- Problem 2
-- Rewrite ifEvenAdd2 n = if even n then (n + 2) else n
ifEvenAdd2 n =
  case even n of
    True -> n + 2
    False -> n

-- Problem 3 (mislabelled as 1)
nums x =
  case compare x 0 of
    LT -> -1 
    GT -> 1
    EQ -> 0
