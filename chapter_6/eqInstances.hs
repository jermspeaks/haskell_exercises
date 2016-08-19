-- Example
data Identity a = 
  Identity a

instance Eq a => Eq (Identity a) where
  (==) (Identity v) (Identity v') = v == v'

-- Problem 1
data TisAnInteger = 
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn v) (TisAn v') = v == v'

-- Problem 2
data TwoIntegers = 
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two r s) (Two r' s') = r == r' && s == s'

-- Problem 3
data StringOrInt =
    TisAnInt    Int
  | TisAString  String

instance Eq StringOrInt where
  (==) (TisAnInt x) (TisAnInt x') = x == x'
  (==) (TisAString y) (TisAString y') = y == y'

-- Problem 4
data Pair a =
  Pair a a

instance Eq p => Eq (Pair p) where
  (==) (Pair r r') (Pair s s') = r == s && r' == s'

-- Problem 5
data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple g h) (Tuple g' h') = g == g && h == h'

-- Problem 6
data Which a =
    ThisOne a
  | ThatOne a 

instance Eq a => Eq (Which a) where
  (==) (ThisOne x) (ThisOne x') = x == x'
  (==) (ThatOne y) (ThatOne y') = y == y'

-- Problem 7
data EitherOr a b =
    Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello r) (Hello r') = r == r'
  (==) (Goodbye s) (Goodbye s') = s == s'
