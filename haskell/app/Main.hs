module Main where

import Range(IRange(..), intRange)
import FizzBuzzer(fizzBuzz, traditionalFizzBuzz)
import Output(output, consoleOutput)

main :: IO ()
main = do
    let range = intRange 100
    let vals = values range
    let fizzBuzzedData = map (fizzBuzz traditionalFizzBuzz) vals
    consoleOutput fizzBuzzedData
