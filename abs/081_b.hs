main :: IO ()
main = do
  n <- readLn :: IO Int
  line <- getLine :: IO String
  let numbers = map read . words $ line :: [Int]
  print $ solver numbers 0

solver :: [Int] -> Int -> Int
solver numbers n = do
  let divNumbers = map (\x -> if even x then x `div` 2 else -1) numbers
  if -1 `elem` divNumbers then n else solver divNumbers (n + 1)