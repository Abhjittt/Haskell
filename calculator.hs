add :: Int -> Int -> Int
add x y =  x + y       
sub :: Int -> Int -> Int
sub x y = x - y
quotient :: Int  -> Int -> Int
quotient x y = x `div` y
remainder :: Int -> Int -> Int
remainder x y = x `mod` y

main = do 
   putStrLn "The addition of 2 and 5 is:"  
   print(add 2 5)   
   putStrLn "The subraction of 2 and 5 is:"  
   print(sub 2 5)   
   putStrLn "The quotient of 2 and 5 is:"  
   print(quotient 2 5)   
   putStrLn "The remainder of 2 and 5 is:"  
   print(remainder 2 5)   
   
