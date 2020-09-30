module Range(IRange(..), intRange) where

import Value(IValue(..), intValue)

data IRange a = IRange
    { values    :: [IValue a] }

createList :: [IValue a] -> (IValue a) -> (IValue a) -> [IValue a]
createList currLs currVal endVal
    | ((equal currVal) currVal endVal) = compoundLs
    | otherwise = createList compoundLs nextVal endVal
    where
        compoundLs = currLs ++ [ currVal ]
        nextVal = ((next currVal) currVal)

intRange :: Int -> (IRange Int)
intRange len =
    IRange  { values =  createList [] (intValue 1) (intValue len) }
