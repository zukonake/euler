multiplesOf3Or5 :: [Int]
multiplesOf3Or5 = filter (\x -> x `rem` 3 == 0 || x `rem` 5 == 0) [1..] 

below :: Int -> [Int] -> [Int]
below maximum list = takeWhile (< maximum) list

main = do
    let result = sum $ below 1000 multiplesOf3Or5
    print result
