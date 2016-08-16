-- module Print1 where
--
-- main :: IO ()
-- main = putStrLn "hello world!"

-- module Print2 where
--
-- main :: IO ()
-- main = do
--  putStrLn "Count to four for me:"
--  putStr   "one, two"
--  putStr   ", three, and"
--  putStrLn " four!"

module Print3 where

myGreeting :: String
-- The above live reads as: "myGreeting has the type string"
myGreeting = "hello" ++ " world!"

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting = concat [hello, " ", world]
