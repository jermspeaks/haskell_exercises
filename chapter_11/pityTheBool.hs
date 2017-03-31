-- Sum Types

data BigSmall =
    Big Bool
  | Small Bool
  deriving (Eq, Show)

-- Big Bool = 2, Small Bool = 2
-- 2 + 2 = 4
-- Cardinality of this datatype is 4

import Data.Int

data NumberOrBool =
    Numba Int8
  | BoolyBool Bool
  deriving (Eq, Show)

let myNumba = Numba (-128)

-- Numba Int8 = 256, BollyBool Bool = 2
-- Cardinality of bool = 258
