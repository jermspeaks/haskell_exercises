module AbsoluteValue where

myAbs :: Integer -> Integer
myAbs n =
  if n < 0
    then n * (-1)
  else
    n
