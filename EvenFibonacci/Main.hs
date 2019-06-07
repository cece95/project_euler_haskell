fibonacciSum :: Int -> Int -> Int -> Int -> Int
fibonacciSum f1 f2 acc limit
    | f1 > limit = acc
    | (mod f1 2) == 0 = (fibonacciSum f2 (f1+f2) (acc+f1) limit)
    | otherwise = (fibonacciSum f2 (f1+f2) acc limit)
main = do
    print(fibonacciSum 0 1 0 4000000)