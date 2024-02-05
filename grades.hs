grade :: Int ->IO()
grade m1 = do
    if m1>=90
    then putStrLn "A"
    else if m1>=80
    then putStrLn "B"
    else if m1>=70
    then putStrLn "C"
    else if m1>=60
    then putStrLn "D"
    else putStrLn "F"

main :: IO()
main = do
    let  m1=90
    let m2=80
    let m3=70
    grade m1
    grade m2
    grade m3