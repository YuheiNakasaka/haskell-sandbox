main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  x <- readLn :: IO Int
  print $ length $ filter (== x) $ map calc $ combinations a b c

combinations :: Int -> Int -> Int -> [(Int, Int, Int)]
combinations a b c = [(x, y, z) | x <- [0 .. a], y <- [0 .. b], z <- [0 .. c]]

calc :: (Int, Int, Int) -> Int
calc (x, y, z) = x * 500 + y * 100 + z * 50