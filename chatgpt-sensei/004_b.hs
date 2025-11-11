isExist :: (Ord a) => a -> [a] -> Bool
isExist x [] = False
isExist x arr
  | x == m = True
  | x < m = isExist x (take i arr)
  | x >= m = isExist x (drop (i + 1) arr)
  where
    i = length arr `div` 2
    m = arr !! i

main :: IO ()
main = do
  print "Enter a number you want to check if it exists in the array"
  input <- getLine
  print $ isExist (read input :: Int) [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]