takeFromEnd :: [a] -> Int -> a
takeFromEnd list index = list !! ((length list) - index)

fibonacci :: [Int] -> [Int]
fibonacci n = if (last n) <= 4000000
    then fibonacci (n ++ [(takeFromEnd n 1) + (takeFromEnd n 2)])
    else n

sumEven :: [Int] -> Int
sumEven numbers = sum $ filter (\x -> x `mod` 2 == 0) numbers

main = print $ sumEven (fibonacci [1, 1])
