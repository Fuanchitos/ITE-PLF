

bools :: [Bool]
bools = [True, False, True]

nums :: [[Int]]
nums = [[1, 2], [3, 4], [5, 6]]

add :: Int -> Int -> Int
add x y = x + y

copy :: a -> (a,a)
copy x = (x, x)

apply :: (a -> b) -> a -> b
apply f x = f x




second xs = head (tail xs)
second :: [a] -> a

swap (x,y) = (y,x)
swap :: (a, b) -> (b, a)

pair x y = (x,y)
pair :: a -> b -> (a, b)

double x = x*2
double :: Num a => a -> a

palindrome xs = reverse xs == xs
palindrome :: Eq a => [a] -> Bool

twice f x = f (f x)
twice :: (a -> a) -> a -> a
