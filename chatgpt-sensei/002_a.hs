fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main :: IO ()
main = do
  putStrLn "Enter a number:"
  input <- getLine
  let n = read input :: Int
  print (take n fibs)