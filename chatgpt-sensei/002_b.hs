fix :: (a -> a) -> a
fix x = x (fix x)

main :: IO ()
main = do
  let ff = take 10 . fix
  print $ ff (0 :) -- [0,0,0,0,0,0,0,0,0,0]
  print $ ff (1 :) -- [1,1,1,1,1,1,1,1,1,1]
  print $ ff (\f -> 1 : 2 : 3 : f) -- [1,2,3,1,2,3,1,2,3,1]
  print $ ff (\f -> 1 : map (* 2) f) -- [1,2,4,8,16,32,64,128,256,512]