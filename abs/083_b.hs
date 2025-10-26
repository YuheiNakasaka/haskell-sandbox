main :: IO ()
main = do
  line <- getLine :: IO String
  let [n, a, b] = map read . words $ line :: [Int]
  print $ sum $ [x | x <- [1 .. n], sumDigits x >= a && sumDigits x <= b]

sumDigits :: Int -> Int
sumDigits 0 = 0
sumDigits n = (n `mod` 10) + sumDigits (n `div` 10)