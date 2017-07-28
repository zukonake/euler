import Data.List
import Data.Maybe

isFactor :: Int -> Int -> Bool
isFactor x y = (y `mod` x) == 0

factors :: Int -> [Int]
factors n = filter (\x -> x `isFactor` n) (takeWhile (<= n ) [1..])

isPrime :: Int -> Bool
isPrime n = (length (factors n)) == 2

smallestPrimeFactor :: Int -> Maybe Int
smallestPrimeFactor 1 = Nothing
smallestPrimeFactor n = find (\x -> (x `isFactor` n) && (isPrime x)) [2..n]

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = do
    let factor = smallestPrimeFactor n
    if factor == Nothing
    then []
    else (fromJust factor):(primeFactors (n `quot` (fromJust factor)))

main = print $ maximum $ primeFactors 600851475143
