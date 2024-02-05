printMiddleK :: Show a => Int -> [a] -> IO ()
printMiddleK k xs
    | length xs < k || k <= 0 = putStrLn "Invalid parameters"
    | otherwise = putStrLn $ "Middle " ++ show k ++ " elements: " ++ show (take k $ drop start xs)
  where
    start = (length xs - k) `div` 2

main :: IO ()
main = do
    let myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let k = 3
    printMiddleK k myList