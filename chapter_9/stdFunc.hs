-- 1. myOr returns True if any Bool in the list is True. 
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs 

-- 2. myAny returns True if a -> Bool applied to any of the values
--    in the list returns True.
myAny :: (a -> Bool) -> [a] -> Bool 
myAny _ [] = False
myAny f (x:xs) = f x || myAny f xs 

--3. After you write the recursive myElem, write another version that uses any.
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem el (x:xs) = el == x || myElem el xs

newElem :: Eq a => a -> [a] -> Bool
newElem el x = any ((==) el) x

-- 4. Implement myReverse. 
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- 5. squish flattens a list of lists into a list
squish :: [[a]] -> [a] 
squish [] = []
squish (x:xs) = x ++ squish xs 

-- 6. squishMap maps a function over a list and concatenates the results.
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs 

-- 7. squishAgain flattens a list of lists into a list. 
--    This time re-use the squishMap function.
squishAgain :: [[a]] -> [a] 
squishAgain a = squishMap id a 

-- 8. myMaximumBy takes a comparison function and a list 
--    and returns the greatest element of the list based on 
--    the last value that the comparison returned GT for.

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ [] = error "Empty List" 
myMaximumBy com (a : as) = foldl maxBy a as
  where maxBy n m =  case com n m of
                          GT -> n
                          _  -> m

-- 9.
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ [] = error "Empty List" 
myMinimumBy com (a : as) = foldl minBy a as
  where minBy n m =  case com n m of
                          LT -> n
                          _  -> m
