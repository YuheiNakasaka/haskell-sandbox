import Data.Map qualified as M

type Counter = M.Map String Int

insertWord :: String -> Counter -> Counter
insertWord w = M.insertWith (+) w 1

wordCount :: String -> Counter
wordCount text = foldr insertWord M.empty (words text)

main :: IO ()
main = do
  putStrLn "Enter a text"
  input <- getContents
  let counts = wordCount input
  mapM_ print (M.toList counts)