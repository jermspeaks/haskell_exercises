-- For Example

data Example = MakeExample deriving Show

-- 1. What is the type of data constructor `MakeExample`?
--    MakeExample :: Example
--    What happens when you request the type of `Example`?
--    Not in scope: data constructor ‘Example’

-- 2. What if you try :info on `Example` in GHCi?
--    data Example = MakeExample  -- Defined at <interactive>:19:1
--    instance Show Example -- Defined at <interactive>:19:37
--    Yes, you can determine the typeclass using :info

-- 3.
data MakeExample = Int deriving Show, Eq
--    Nothing has changed if you query `MakeExample` with :type
