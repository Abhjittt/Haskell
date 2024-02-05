printTo100 :: Int -> IO ()
printTo100 x = do
    if x <=100
    then do 
        print(x)
        printTo100 (x + 1)
    else return ()

main :: IO ()
main = do
    printTo100 1