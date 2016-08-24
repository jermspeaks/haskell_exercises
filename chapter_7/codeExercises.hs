-- Problem 1
tensDigit :: Integral a => a -> a
-- tensDigit x = d
--   where xLast = x `div` 10
--         d     = xLast `mod` 10

tensDigit x = d
  where d = snd . divMod 10 $ x

hunsD :: Integral a => a -> a
hunsD x = d2
  where d2 = snd . divMod 100 $ x

-- Problem w
foldBool :: a -> a -> Bool -> a
foldBool = error "Error: Need to implement foldBool!"

foldBool3 :: a -> a -> Bool -> a
foldBool3 x y True = x
foldBool3 x y False = y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x _ True = x
foldBool2 _ y False = y

-- Problem 3
g :: (a -> b) -> (a, c) -> (b, c)
g f t = (f . fst $ t, snd t)
