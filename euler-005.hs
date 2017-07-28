import Data.List
import Data.Maybe

isFactorOf :: Int -> Int -> Bool
isFactorOf x y = (y `mod` x) == 0

areFactorsOf :: [Int] -> Int -> Bool
areFactorsOf [] _ = True
areFactorsOf (x:xs) n = (x `isFactorOf` n) && xs `areFactorsOf` n

smallestMultiple :: [Int] -> Int
smallestMultiple n = fromJust (find (\x -> n `areFactorsOf` x) [1..])

main = print $ smallestMultiple [1..10]
