simpleInterest :: Float -> Float -> Float -> Float
simpleInterest p t r = (p*t*r)/100
main = do
    let p=1000
    let r =3
    let t=2
    let interest = simpleInterest p t r
    print("the simple interest is:")
    print(interest) 