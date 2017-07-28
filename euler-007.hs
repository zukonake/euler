import Data.List
import Data.Maybe

isFactorOf :: Int -> Int -> Bool
isFactorOf x y = (y `mod` x) == 0

factors :: Int -> [Int]
factors n = filter (\x -> x `isFactorOf` n) (takeWhile (<= n ) [1..])

isPrime :: Int -> Bool
isPrime n = (length (factors n)) == 2

primes :: [Int]
primes = filter (\x -> isPrime x) [2..]

main = print $ primes !! 10000
