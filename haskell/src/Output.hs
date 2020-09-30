module Output(output, consoleOutput) where

output :: ([String] -> IO()) -> [String] -> IO()
output outputFunction strs =
    outputFunction strs

consoleOutput :: [String] -> IO()
consoleOutput strs
    | length strs == 1 = putStrLn (strs !! 0)
    | otherwise = do
        putStrLn (strs !! 0)
        consoleOutput (drop 1 strs)
