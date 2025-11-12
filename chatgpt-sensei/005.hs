import Data.List (foldl')

sumR :: (Num a) => [a] -> a
sumR = foldl' (+) 0

sumL :: (Num a) => [a] -> a
sumL = foldl (+) 0

sumS :: (Num a) => [a] -> a -- 速い！
sumS = foldl' (+) 0

main :: IO ()
main = do
  print $ sumR [1 .. 10000000]
  print $ sumL [1 .. 10000000]
  print $ sumS [1 .. 10000000]