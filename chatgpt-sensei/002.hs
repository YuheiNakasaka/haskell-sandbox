fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci m = fibonacci (m - 1) + fibonacci (m - 2)

main :: IO ()
main = do
  putStrLn "Enter a number"
  input <- getLine
  let n = read input :: Integer
  print (fibonacci n)