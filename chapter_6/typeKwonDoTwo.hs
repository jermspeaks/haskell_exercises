-- Problem 1
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = (f x) == y

-- Problem 2
arith :: Num b => (a -> b) -> Integer -> a -> b
arith f i j = f j
-- This is a partial answer. Still thinking through turning Integer into type 'b'
