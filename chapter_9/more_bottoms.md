1. take 1 $ map (+1) [undefined, 2, 3]
   
   This will ⊥

2. take 1 $ map (+1) [1, undefined, 3]
  
   This will return `2`

3. take 2 $ map (+1) [1, undefined, 3]

   This will ⊥

4. itIsMystery xs = map (\x -> elem x "aeiou") xs   
  
   This will return bool type

   `itIsMystery :: [Char] -> [Bool]`

5. a) map (^2) [1..10]
  
      result = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

   b) map minimum [[1..10], [10..20], [20..30]] 
      -- n.b. `minimum` is not the same function 
      -- as the `min` that we used before

      result = [1, 10, 20]

   c) map sum [[1..5], [1..5], [1..5]]

      result = [15, 15, 15]
