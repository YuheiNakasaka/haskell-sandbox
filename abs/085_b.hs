import Control.Monad (replicateM)
import Data.Set qualified as Set

main :: IO ()
main = do
  n <- readLn :: IO Int
  di <- replicateM n readLn :: IO [Int]
  print $ length $ Set.toList $ Set.fromList di