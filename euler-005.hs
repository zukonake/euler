import Data.List

isFactorOf :: Int -> Int -> Bool
isFactorOf x y = (y `mod` x) == 0

areFactorsOf :: [Int] -> Int -> Bool
areFactorsOf [] _ = True
areFactorsOf list x = ((head list) `isFactorOf` x) && (tail list) `areFactorsOf` x

smallestMultiple :: [Int] -> Maybe Int
smallestMultiple n = find (\x -> n `areFactorsOf` x) [1..]

main = print $ smallestMultiple [1..20]
