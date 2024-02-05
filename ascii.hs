-- import Data.Char 
-- main :: IO()
-- main = print (ord 'A')

main :: IO ()
main = do
    print (fromEnum '1')
    print (toEnum 65 :: Char)