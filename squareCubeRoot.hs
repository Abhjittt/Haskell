square :: Int -> Int
square x = x * x

cube :: Int -> Int
cube x = x * x * x

root :: Int -> Int
root x = round (sqrt (fromIntegral x))

main :: IO ()
main = do
    print (square 2)
    print (cube 2)
    print (root 9)
    