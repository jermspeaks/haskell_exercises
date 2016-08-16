module Reverse where

rvrs :: String -> String
rvrs x = third ++ " " ++ second ++ " " ++ first
  where third = take 7 $ drop 9 x
        second = take 2 $ drop 6 x
        first = take 5 x 

main :: IO ()
main = print $ rvrs "Curry is awesome."
