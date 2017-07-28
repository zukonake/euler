isFactor :: Int -> Int -> Bool
isFactor x y = (y `mod` x) == 0

factors :: Int -> [Int]
factors n = filter (\x -> x `isFactor` n) (takeWhile (<= n ) [1..])

isPrime :: Int -> Bool
isPrime n = (length (factors n)) == 2

primeFactors :: Int -> [Int]
primeFactors n = filter (\x -> isPrime x ) (factors n)

main = print $ primeFactors 600851475143
