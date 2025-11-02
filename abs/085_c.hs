main :: IO ()
main = do
  [n, m] <- map read . words <$> getLine :: IO [Int]
  let results = [[10000 * x, 5000 * y, 1000 * (n - x - y)] | x <- [0 .. n], y <- [0 .. n], n - x - y >= 0]
  let filteredResults = filter (\[x, y, z] -> x + y + z == m) results
  if null filteredResults
    then putStrLn $ unwords $ map show [-1, -1, -1]
    else do
      let divResults = map (\[x, y, z] -> [x `div` 10000, y `div` 5000, z `div` 1000]) filteredResults
      let result = map show $ head divResults
      if null result then putStrLn $ unwords $ map show [-1, -1, -1] else putStrLn $ unwords result
