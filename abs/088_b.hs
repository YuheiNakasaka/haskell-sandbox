import Data.List (reverse, sort)

main :: IO ()
main = do
  n <- readLn :: IO Int
  line <- getLine :: IO String
  let numbers = map read . words $ line :: [Int]
  let sortedNumbers = reverse $ sort numbers
  let orders = [0 .. (n - 1)]
  let aliceScore = sum $ map (\x -> if even x then sortedNumbers !! x else 0) orders
  let bobScore = sum $ map (\x -> if odd x then sortedNumbers !! x else 0) orders
  print $ aliceScore - bobScore
