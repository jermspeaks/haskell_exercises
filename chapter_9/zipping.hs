-- Zipping

-- 1. Write your own version of myZip :: [a] -> [b] -> [(a, b)] and ensure it behaves the same as the original.

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (m:ms) (n:ns) = (m, n) : myZip ms ns 

-- 2. Do what you did for myZip, but now for zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

myZipWidth :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWidth _ [] _ = []
myZipWidth _ _ [] = []
myZipWidth f (a:as) (b:bs) = f a b : myZipWidth f as bs

-- 3. Rewrite your myZip in terms of the zipWith you wrote.

newZip :: [a] -> [b] -> [(a, b)]
newZip o p = myZipWidth (\r -> \s -> (r, s)) o p 
