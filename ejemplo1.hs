double x = x + x
double :: Int -> Int

quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns

second :: [a] -> a
second xs = head (tail xs)

swap :: (x,y) -> (y,x)
swap (x,y) = (y,x)

