module Jammin where

data Fruit = 
    Peach
  | Plum
  | Apple
  | Blackberry
  deriving (Eq, Show, Ord)

data JamJars =
  JamJars { fruit :: Fruit
          , jars :: Int }
          deriving (Eq, Show, Ord)
-- Cardinality of JamJars is 32768 * 4
-- assuming Int is Int16 by default

row1 = JamJars {fruit = Peach, jars = 5}
row2 = JamJars {fruit = Peach, jars = 3} 
row3 = JamJars {fruit = Plum, jars = 8}
row4 = JamJars {fruit = Plum, jars = 3} 
row5 = JamJars {fruit = Apple, jars = 10}
row6 = JamJars {fruit = Blackberry, jars = 7}
row7 = JamJars {fruit = Blackberry, jars = 3} 
allJam = [row1, row2, row3, row4, row5, row6, row7]

