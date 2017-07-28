import Data.List
import Data.Maybe

isFactor :: Int -> Int -> Bool
isFactor x y = (y `mod` x) == 0

factors :: Int -> [Int]
factors n = filter (\x -> x `isFactor` n) (takeWhile (<= n ) [1..])

isPrime :: Int -> Bool
isPrime n = (length (factors n)) == 2

smallestPrimeFactor :: Int -> Int
smallestPrimeFactor n = fromJust $ find (\x -> (x `isFactor` n) && (isPrime x)) [2..n]

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = factor:(primeFactors (n `quot` factor))
        where factor = smallestPrimeFactor n

main = print $ maximum $ primeFactors 600851475143
