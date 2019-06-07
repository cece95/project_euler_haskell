module Main where

isMultiple :: Int -> Int -> Int -> Int 
isMultiple num1 num2 mult 
           | (mod mult num1) == 0 = mult
           | (mod mult num2) == 0 = mult
           | otherwise = 0


filterMultiples :: Int -> Int -> [Int] -> [Int]
filterMultiples n1 n2 [] = []
filterMultiples n1 n2 (h:t) = isMultiple n1 n2 h : filterMultiples n1 n2 t 

main = do
    print "Insert first number"
    input1 <- getLine
    print "Insert second number"
    input2 <- getLine
    print "Insert the limit"
    inputLimit <- getLine
    let n1 = (read input1 :: Int)
    let n2 = (read input2 :: Int)
    let limit = (read inputLimit :: Int) - 1
    let numList = take limit [1..]
    let result = sum (filterMultiples n1 n2 numList)
    print ("Result: " ++ (show result))
    
