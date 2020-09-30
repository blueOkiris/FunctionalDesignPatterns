module FizzBuzzer(fizzBuzz, traditionalFizzBuzz) where

import Text.Read(readMaybe)
import Data.Maybe(fromMaybe)
import Value(IValue(..))

fizzBuzz :: ((IValue a) -> String) -> (IValue a) -> String
fizzBuzz fizzBuzzer value =
    fizzBuzzer value

traditionalFizzBuzz :: (IValue a) -> String
traditionalFizzBuzz val
    | (intVal `mod` (3 * 5 :: Int)) == 0 =  "FizzBuzz"
    | (intVal `mod` 3) == 0 =               "Fizz"
    | (intVal `mod` 5) == 0 =               "Buzz"
    | otherwise =                           toStr val
    where
        -- Default to 1 which isn't mod 3, 5, or 3*5 == 0
        intVal = fromMaybe 1 $ readMaybe (toStr val)
