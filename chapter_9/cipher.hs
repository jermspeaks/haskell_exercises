module Cipher where

import Data.Char

coder f l = 
  if (ls < 97) || (ls > 122) 
    then 
      if (ls < 97) 
        then low ls 
        else high ls 
    else ls
  where ls = f $ ord l
        low n = 123 - (97 - n)
        high n = (n - 122) + 96

cipher s m = map shift m
  where shift letter = chr $ coder alg letter
        alg = (+) s

decipher s en = map decoder en
  where decoder letter = chr $ coder alg letter
        alg = (+) $ negate s
