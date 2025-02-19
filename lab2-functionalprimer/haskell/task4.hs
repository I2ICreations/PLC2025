ask :: String -> IO ()
ask prompt =
  do
    putStrLn prompt 
    line <- getLine
    if line == ""
      then ask (prompt ++ "!")
      else if line == "quit"
        then do 
          putStrLn("quitting...")
          return ()
          else do 
            putStrLn ("you said: " ++ reverse line)
            ask prompt


main :: IO ()
main =
  do
  let prompt = "please say something" 
  ask prompt 