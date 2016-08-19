-- Problem 1

data Person = Person Bool

instance Show Person
  where show _ = "Person"

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- Problem 2
data Mood = Blah
          | Woot deriving (Eq, Show)

settleDown x = if x == Woot
                  then Blah
                  else x

-- Problem 4
type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"
