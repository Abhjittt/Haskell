exponentialFunction :: Double -> Double
exponentialFunction x = exp (-x)
generatePoints :: [Double] -> [(Double, Double)]
generatePoints xs = [(x, exponentialFunction x) | x <- xs]
main :: IO ()
main = do
    let xValues = [-5,-4.9..5]
        points = generatePoints xValues
    putStrLn "Generated (x, y) points for e^(-x):"
    mapM_ (\(x, y) -> putStrLn $ "(" ++ show x ++ ", " ++ show y ++ ")") points
