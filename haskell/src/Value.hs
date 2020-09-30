module Value(IValue(..), intValue) where

data IValue a = IValue
    { value     :: a
    , toStr     :: String
    , next      :: (IValue a) -> (IValue a)
    , equal     :: (IValue a) -> (IValue a) -> Bool }

intValue :: Int -> (IValue Int)
intValue val =
    IValue  { value =   val
            , toStr =   show val
            , next =    \x -> intValue ((value x) + 1)
            , equal =   \x -> (\y -> (value x) == (value y)) }
