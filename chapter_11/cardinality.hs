-- Cardinality

-- 1.
data PugType = PugData

--    Cardinality 1

-- 2. For this one, recall that `Bool`
--    is also defined with the |:
data Airline = 
       PapuAir
     | CatapultsR'Us
     | TakeYourChancesUnited

--    Cardinality 3

-- 3. Given what we know about Int8
--    What's the cardinality of Int16

--    Int8 = cardinality 256
--    Int16 = cardinality 65536

-- 4. User the REPL and `maxBound` and `minBound`
--    to examine `Int` and `Integer`.

--    Int = cardinality 18446744073709551615
--    Assuming this is the same for Integer

-- 5. Connection between 8 in Int8 and cardinality 
--    of 256 is 2 ^ 8, or 2 to the power of 8
