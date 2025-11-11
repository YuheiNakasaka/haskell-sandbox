quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x : xs) =
  quickSort [y | y <- xs, y <= x]
    ++ [x]
    ++ quickSort [y | y <- xs, y > x]

main :: IO ()
main = print $ quickSort [3, 6, 8, 10, 1, 2, 1]