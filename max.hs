import Data.List 
main :: IO()
main = do
    putStrLn "Enter a list of numbers separated by spaces:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    let maxim = maximum numbers
    print maxim

