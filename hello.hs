-- comment

-- main = putStrLn "hello, world"
import Prelude hiding (even, odd)

even :: Int -> Bool
even x = x == 0 || odd(x - 1)

odd :: Int -> Bool
odd x = x /= 0 && even(x - 1)

add :: Int -> Int -> Int
add x y = x + y

m=2::Int

main :: IO()
main = do
    print $ factorial 3
    print $ even 2
    print $ even 3
    print $ odd 4
    print $ odd 5
    print $ factorialPattern 5
    print $ power 3 5
    print $ power (-3) 2.0
    print $ map id [1, 2, 3, 4, 5]
    print $ map succ [1, 2, 3, 4, 5]
    print $ map area [1, 2, 3, 4, 5]
    print $ twice id 2
    print $ twice succ 2
    print $ twice square 2
    print $ twice twice square 2
    print $ map (\x -> x * x) [1, 2, 3, 4, 5]
    print $ double 3
    print $ head [1, 2, 3]
    print $ tail [1, 2, 3]
    print ([1] ++ [2, 3])
    print $ length [1,2,3]
    print $ map (2 *) [1, 2, 3]
{-
main = do 
    putStrLn 
        "hello, " 
    putStrLn 
        ", world"
    putStrLn 
        "!!"
    print
        (add m 3) 
    print
        (getValue 0 Nothing)
    print
        (getValue 0 (Just 5))
    print
        (absMaybe Nothing )
    print
        (absMaybe (Just 5) )
    print
        (absMaybe (Just (-5)) )
    print
        (area 10)
    print
        (areaWhere 10)
-}
 
getValue defval maybe =
    case maybe of
        Nothing -> defval
        Just x -> x

absMaybe x =
    case x of
        Nothing -> 0
        Just x
            | x < 0 -> -x
            | otherwise -> x

area r = 
    let pi = 3.14
        square x = x * x
    in pi * square r

areaWhere r = pi * square r
    where
        pi = 3.14
        square x = x * x

factorial :: Int -> Int
factorial x =
    if x == 0 then 1
        else x * factorial(x - 1)

factorialPattern :: Int -> Int
factorialPattern 0 = 1
factorialPattern x = x * factorialPattern(x - 1)

power :: Int -> Double -> Double
power 0 _ = 1.0
power x y
    | x > 0 = y * power (x - 1) y
    | otherwise = 1.0 / power(-x) y

twice :: (a -> a) -> a -> a
twice f x = f (f x)
square :: Int -> Int
square x = x * x

mult :: Int -> Int -> Int
mult x y = x * y

double :: Int -> Int
double = mult 2
{-blockComment

-}
