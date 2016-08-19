data Rocks =
  Rocks String deriving (Eq, Show) 
data Yeah =
  Yeah Bool deriving (Eq, Show)
data Papu =
  Papu Rocks Yeah deriving (Eq, Show)

-- 1. 
-- phew = Papu "chases" True
-- Doesn't work - Improper type String and Bool
-- Expecting types "Rocks" and "Yeah"

--2. 
truth = Papu (Rocks "chomskydoz")
             (Yeah True)
-- Works

--3. 
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'
-- Works

--4. 
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'
-- Won't work. Not type Ord
