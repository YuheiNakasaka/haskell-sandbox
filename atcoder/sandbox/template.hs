import Control.Monad (forM_, replicateM, when)
import Data.List qualified as L

main :: IO ()
main = do
  [n, m] <- map read . words <$> getLine :: IO [Int]
  print (n, m)