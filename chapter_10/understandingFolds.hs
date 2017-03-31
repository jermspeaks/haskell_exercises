-- 1. foldr (*) 1 [1..5] == foldl (*) 1 [1..5]
-- 2. foldl (flip (*)) 1 [1..3] Evaludates to the following
--    f = flip (*)
--    ((([] f 1) f 2) f 3)
--    ((1 f 2) f 3)
--    (2 f 3)
--    6
-- 3. One difference between foldr and foldl is (c) foldr, but not foldl, associates to the right