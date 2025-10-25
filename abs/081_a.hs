main :: IO ()
main = do
  input <- getLine
  print $ solve input

solve :: String -> Int
solve s = do
  let words = s
  length $ filter (== '1') words
