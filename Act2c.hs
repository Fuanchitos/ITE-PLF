halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

third :: [a] -> a
third xs = head (tail (tail xs))
third :: [a] -> a
third xs = xs !! 2
third :: [a] -> a
third (_:_:x:_) = x
third _ = error "La lista no tiene al menos tres elementos"

safetail :: [a] -> [a]
safetail xs = if null xs then error "Lista vacía" else tail xs

safetail :: [a] -> [a]
safetail xs
    | null xs   = error "Lista vacía"
    | otherwise = tail xs

safetail :: [a] -> [a]
safetail [] = error "Lista vacía"
safetail (_:xs) = xs

(|||) :: Bool -> Bool -> Bool
True  ||| _     = True
False ||| True  = True
False ||| False = False

(|||) :: (Bool, Bool) -> Bool
(True, _)       ||| _       = True
(False, True)   ||| _       = True
(False, False)  ||| _       = False

(|||) :: (Bool, Bool) -> Bool
(|||) (True, _)        = True
(|||) (False, True)    = True
(|||) (False, False)   = False

(|||) :: Bool -> Bool -> Bool
a ||| b
    | a == True = True
    | b == True = True
    | otherwise = False

(&&*) :: Bool -> Bool -> Bool
a &&* b = if a then
            if b then True else False
          else False

(&&*) :: Bool -> Bool -> Bool
a &&* b = if a then b else False

luhnDouble :: Int -> Int
luhnDouble x = if doubled > 9 then doubled - 9 else doubled
    where doubled = x * 2
    
luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = total `mod` 10 == 0
    where total = luhnDouble a + b + luhnDouble c + d
