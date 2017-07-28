import Data.List
import Data.Maybe

isFactorOf :: Int -> Int -> Bool
isFactorOf x y = (y `mod` x) == 0

factors :: Int -> [Int]
factors n = filter (\x -> x `isFactor` n) (takeWhile (<= n ) [1..])

isPrime :: Int -> Bool
isPrime n = (length (factors n)) == 2

smallestPrimeFactor :: Int -> Int
smallestPrimeFactor n = fromJust $ find (\x -> (x `isFactorOf` n) && (isPrime x)) [2..n]

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = factor:(primeFactors (n `quot` factor))
        where factor = smallestPrimeFactor n

main = print $ maximum $ primeFactors 600851475143
