km_m :: Int -> Int
km_m x = x * 1000

m_km :: Double -> Double
m_km x = x / 1000

main = do
    putStrLn "Enter the distance in km:"
    print(km_m 1)
    putStrLn "Enter the distance in m:"
    print(m_km 1000)