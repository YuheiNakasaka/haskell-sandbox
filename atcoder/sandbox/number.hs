import Data.Int (Int64)

x :: Int
x = 10 ^ 9

y :: Integer
y = 10 ^ 30

z :: Int64
z = 10 ^ 12

f :: Int -> Double
f n = fromIntegral n / 2.0

main :: IO ()
main = do
  print x
  print y
  print z
  print (f 1)