compundInterest :: Float -> Float -> Float -> Float -> Float
compundInterest p t r n= p*((1+r/(100*n))**(n*t)) - p

main :: IO ()
main = do
    let p=1000
    let r=3
    let t=2
    let n=1
    let interest=compundInterest p t r n
    print(interest)
    