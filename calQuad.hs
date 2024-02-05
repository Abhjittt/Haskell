printRoots :: Float->Float->Float->IO()
printRoots a b c = do
   print("a,b,c values =",a,b,c)
   let d = b^2 - 4*a*c
   if (d < 0)
      then do
         print ("This quadratic equation has imaginary roots")
      else do
         let root1 = (-(b) + sqrt (d))/2 * (a)
         let root2 = (-(b) - sqrt (d))/2 * (a)
         print ("The roots for this quadratic are:")
         print (root1)
         print (root2)
         
main :: IO()
main = do
   let a = 1
   let b = 4
   let c = 2
   printRoots (a) (b) (c)