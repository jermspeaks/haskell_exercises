module Palindrome where

pal xs = 
  case y of
    True -> "yes"
    False -> "no"
  where y = xs == reverse xs
