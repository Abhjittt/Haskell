arr :: [[Char]]
arr = [['0', '1', '*'], ['0', '1', '*'], ['0', '*', '*']]


transpose :: [[a]] -> [[a]]
transpose ([]:_) = []
transpose x = map head x : transpose (map tail x)

checkList :: [Char] -> String
checkList xs 
    | all (=='*') xs = "star"
    | all (`elem` ['*', '1']) xs = "planet"
    | '0' `elem` xs = "dark planet"
    | otherwise = "unknown"

checkColumns :: [[Char]] -> [String]
checkColumns = map checkList . transpose

main :: IO ()
main = print $ checkColumns arr