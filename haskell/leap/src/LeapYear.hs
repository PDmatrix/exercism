module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year
    | year `mod` 4 == 0 = isDivisibleBy100 year
    | otherwise = False

isDivisibleBy100 :: Integer -> Bool
isDivisibleBy100 year
    | year `mod` 100 == 0 = isDivisibleBy400 year
    | otherwise = True

isDivisibleBy400 :: Integer -> Bool
isDivisibleBy400 year
    | year `mod` 400 == 0 = True
    | otherwise = False
