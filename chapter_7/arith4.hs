-- arith4.hs
module Arith4 where 

-- id :: a -> a
-- id x = x

roundTrip :: (Show a, Read b) => a -> b 
-- roundTrip a = read (show a)
roundTrip a = read . show $ a

main = do
  print (roundTrip 4) 
  print (id 4)
