{-# LANGUAGE MultiParamTypeClasses #-}

class TooMany a b where
  tooMany :: a -> b -> Bool

-- instance TooMany Int where
--  tooMany n = n > 42

instance TooMany (Int, String) where
  tooMany n s = n > 42

-- newtype Goats = 
--   Goats Int deriving (Eq, Show, TooMany)

