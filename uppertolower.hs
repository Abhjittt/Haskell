import Data.Char (toLower,toUpper)
main :: IO ()
main = do
    print (map toLower "HELLO WORLD")
    print (map toUpper "hello world")