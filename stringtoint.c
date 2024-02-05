import Data.List (elemIndex)

-- Function to find the index of an element in a list
findIndex :: Eq a => a -> [a] -> Int
findIndex element list = case elemIndex element list of
  Just index -> index
  Nothing    -> -1

findval :: Int -> [Int] -> Int
findval val list = list !! val

printMiddleK :: Show a => Int -> [a] -> IO ()
printMiddleK k xs
    | length xs < k || k <= 0 = putStrLn "Invalid parameters"
    | otherwise = putStrLn $ "Middle " ++ show k ++ " elements: " ++ show (take k $ drop start xs)
  where
    start = fromIntegral $ (length xs - k) `div` 2

main :: IO ()
main = do
  let input = ['E','F','G','H','I','J','K']
      keys = ['A'..'Z'] ++ ['a'..'z']
      vals = [5..57]
  
  let kiki = map (\z -> findIndex z keys) input
  let final = map (\z -> findval z vals) kiki
  
  print final
  let k = 2 
  printMiddleK k final
