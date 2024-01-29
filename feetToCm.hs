feetToCm :: Float -> Float 
feetToCm f = f*30.48

cmToFeet :: Float -> Float
cmToFeet c = c/30.48

main = do
    print(feetToCm 2)
    print(cmToFeet 30.48)