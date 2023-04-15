-- The following function definition contains a syntax error:
-- (To enable the code, delete contents of lines 10 and 3 and line -- on line 24)

sayHello :: IO ()
sayHello =
  do
  let name = "Alice"
  putStrLn "hello"
  putStrLn name


ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    -- then ask prompt
    then ask (prompt ++ "!") -- Task c-iii - when someone presses enter without typing anything, the repeated prompt will have an extra "!" at the end
    -- then ask (1 + prompt) -- Task c-iv - compiler error
  else if line == "quit"
    then putStrLn ("quitting...") -- Task c ii - if quit is entered, the message "quitting" is displayed
    else putStrLn ("you said: " ++ reverse line)

-- Task a - define function called myFunc and takes one argument
myFunc :: Integer -> Integer
myFunc x = x*10

main :: IO ()
main =
  do
  sayHello
  ask "please say something"
  print (myFunc 3) -- Call the myFunc function
  print (show(myFunc 3)) -- Task b - Convert integer to string
