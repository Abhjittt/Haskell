-- removeAdjacentDuplicates :: Eq a => [a] -> [a]
-- removeAdjacentDuplicates [] = []
-- removeAdjacentDuplicates [x] = [x]
-- removeAdjacentDuplicates (x:y:rest)
--     | x == y    = removeAdjacentDuplicates (y:rest)
--     | otherwise = x : removeAdjacentDuplicates (y:rest)

-- main :: IO ()
-- main = do
--     let inputString = "ggoogleeo"
--     let result = removeAdjacentDuplicates inputString
--     putStrLn $ "Original: " ++ inputString
--     putStrLn $ "Result:   " ++ result
removeAdjacentDuplicates :: String -> String
removeAdjacentDuplicates [] = []
removeAdjacentDuplicates [x] = [x]
removeAdjacentDuplicates (x:y:xs)
    | x == y    = removeAdjacentDuplicates xs
    | otherwise = x : removeAdjacentDuplicates (y:xs)

main :: IO ()
main = do
    putStrLn "Enter a string with adjacent duplicates:"
    input <- getLine
    let result = removeAdjacentDuplicates input
    putStrLn $ "String after removing adjacent duplicates: " ++ result
