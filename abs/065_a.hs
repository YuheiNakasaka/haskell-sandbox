import Data.List qualified as L
import Data.Maybe (listToMaybe, mapMaybe)

canRecognize :: String -> Bool
canRecognize = inner . reverse
  where
    patterns = map reverse ["dream", "dreamer", "erase", "eraser"]
    inner [] = True
    inner s = case listToMaybe $ mapMaybe (`L.stripPrefix` s) patterns of
      Nothing -> False
      Just s' -> inner s'

main :: IO ()
main = do
  s <- getLine
  putStrLn $ if canRecognize s then "YES" else "NO"