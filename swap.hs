swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)
main :: IO ()
main = do
    let x=10
    let y=20
    print (swap (x, y))

