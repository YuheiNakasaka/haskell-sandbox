main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  if even a || even b then putStrLn "Even" else putStrLn "Odd"