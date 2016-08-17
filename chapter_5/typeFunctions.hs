i :: a -> a
i x = x

c :: a -> b -> a
c x y = x

c'' :: b -> a -> b
c'' x y = x

c' :: a -> b -> b
c' x y = y

r :: [a] -> [a]
r x = x
-- there's another possibility here

co :: (b -> c) -> (a -> b) -> (a -> c)
co x y z = x (y z)
-- I'll have to come back to this

a :: (a -> c) -> a -> a
a f s = s

a' :: (a -> b) -> a -> b
a' f s = f s
