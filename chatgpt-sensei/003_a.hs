fizzbuzz :: Int -> String
fizzbuzz n = case (n `mod` 3 == 0, n `mod` 5 == 0) of
  (True, True) -> "FizzBuzz"
  (True, False) -> "Fizz"
  (False, True) -> "Buzz"
  (False, False) -> show n

main :: IO ()
main = do
  let result = map fizzbuzz [1 .. 100]
  putStrLn $ unlines result