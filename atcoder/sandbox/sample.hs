import Data.List qualified as L

f :: Int -> Int
f n =
  let m = n * 2
   in m * 10

countEven :: [Int] -> Int
countEven = L.foldl' (\acc x -> if even x then acc + 1 else acc) 0

freq :: (Ord a) => [a] -> [(a, Int)]
freq = map (\g -> (head g, length g)) . L.group . L.sort

main :: IO ()
main = do
  print $ f 10
  print $ countEven [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  print $ freq [1, 1, 3, 4, 5, 4, 4, 8, 4, 8]