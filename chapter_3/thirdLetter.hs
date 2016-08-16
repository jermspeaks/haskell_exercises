module ThirdLetter where

thirdLetter :: String -> Char 
thirdLetter x = x !! 2
-- index starts at 0, so third letter would be 2nd index

letterIndex :: Int -> Char
letterIndex x = tempString !! x
  where tempString = "Curry is awesome!"

rvrs s = drop 5 (drop 4 s) ++ take 4 (drop 5 s) ++ take 5 s ++ "."
  where s = "Curry is awesome!"
