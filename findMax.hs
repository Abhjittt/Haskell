-- findMax :: [Int] -> Int
-- findMax [] = error "Empty list"
-- findMax [x] = x
-- findMax (x:xs) = max x (findMax xs)

-- main :: IO ()
-- main = do
--     print (findMax [1,2,3,4,5,6,7,8,9,10])
-- Recursive function to find the maximum value in a list
-- Main function to read input and print the result



main :: IO ()
main = do
    putStrLn "Enter a list of numbers separated by spaces:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    let result = findMaxRecursion numbers
    putStrLn $ "Maximum value is: " ++ show result

findMaxRecursion :: (Ord a) => [a] -> a
findMaxRecursion [] = error "Empty list, no maximum value"
findMaxRecursion [x] = x
findMaxRecursion (x:xs) = max x (findMaxRecursion xs)
