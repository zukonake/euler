sumOfSquares :: [Int] -> Int
sumOfSquares [] = 0
sumOfSquares (x:xs) = (x^2) + (sumOfSquares xs)

squareOfSum :: [Int] -> Int
squareOfSum n = (sum n)^2

difference :: [Int] -> Int
difference n = (squareOfSum n) - (sumOfSquares n)

main = print $ difference [1..100]
