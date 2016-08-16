module CombineTuples where

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f m n = ((snd m, snd n), (fst m, fst n))
