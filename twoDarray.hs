-- Define a 2D list of characters
myChar2DList :: [[Char]]
myChar2DList = [['0', '1', '*'], ['1', '1', '*'], ['0', '*', '*']]

-- Function to print a 2D list of characters
printChar2DList :: [[Char]] -> IO ()
printChar2DList [] = putStrLn "Empty 2D list"
printChar2DList (row:rows) = do
  printCharRow row
  printChar2DList rows
  where
    printCharRow :: [Char] -> IO ()
    printCharRow [] = putStrLn ""
    printCharRow (x:xs) = do
      putStr (x : " ")
      printCharRow xs

-- Main function to run the program
main :: IO ()
main = printChar2DList myChar2DList
