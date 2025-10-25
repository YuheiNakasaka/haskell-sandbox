module Main where

doubleList :: [Int] -> [Int]
doubleList = map (* 2)

safeDivide :: Double -> Double -> Maybe Double
safeDivide _ 0 = Nothing
safeDivide x y = Just (x / y)

hogeMonad :: Maybe Int -> Maybe Int
hogeMonad arg = do
  arg >>= \x -> Just (x * 2) >>= \y -> Just (y + 1)

evens :: [Int]
evens = filter even [10 .. 20]

odds :: [Int]
odds = filter odd [10 .. 20]

combinations :: [(Int, Int)]
combinations = do
  even <- evens
  odd <- odds
  return (even, odd)

main :: IO ()
main = do
  print $ doubleList [10, 20, 30]

  print $ safeDivide 10 0
  print $ safeDivide 10 2

  print $ hogeMonad (Just 6)
  print $ hogeMonad Nothing

  print combinations

  print $ length combinations
