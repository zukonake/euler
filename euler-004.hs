multiples :: Num a => [a] -> [a]
multiples [] = []
multiples n = (map ((*) (head n)) n) ++ (multiples (tail n))

isPalindrome :: Int -> Bool
isPalindrome n = (take ((length string) `quot` 2) string) == reverse (drop ((length string + 1) `quot` 2) string)
    where string = show n

palindromes :: [Int] -> [Int]
palindromes n = filter (\x -> isPalindrome x) n

main = print $ maximum $ palindromes $ multiples [(10^2)..((10^3)-1)]
