-- Example

-- data Woot

-- data Blah

-- f :: Woot -> Blah
-- f = undefined

-- g :: (Blah, Woot) -> (Blah, Blah)
-- g (b, w) = (b, f w)

-- Problem 1
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h x = g (f x)

-- Problem 2
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined 

e :: A -> C
e x = w (q x)

-- Problem 3
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xForm :: (X, Y) -> (Z, Z)
xForm (x, y) = (xz x, yz y)

-- Problem 4
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge a b c = fst (b (a c))


