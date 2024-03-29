module Week10 where

import System.Directory

palindrome :: IO ()
palindrome = do
   putStrLn "Write a word: "
   n <- getLine
   if n == (reverse n) then 
      putStrLn "That word is a palindrome"
   else 
      putStrLn "That word is not a palindrome"

reverseFile :: IO ()
reverseFile = do
   putStrLn "Write a local file name: "
   f <- getLine
   w <- readFile f
   putStr (unlines (reverse (lines (w))))
   
cdContents :: IO ()
cdContents = do
   c <- getDirectoryContents "."
   putStrLn (unlines c)

cdFileContents :: FilePath -> IO ()
cdFileContents file = do
   c <- readFile file
   putStr c

outputContents :: IO ()
outputContents = do 
   f <- getDirectoryContents "."
   sequence_ [cdFileContents ef | ef <- f]

repeatIO :: Int -> IO a -> IO ()
repeatIO 0 io = return ()
repeatIO n io = do 
   io
   repeatIO (n-1) io


linesPalindrome :: IO()
linesPalindrome = do
   putStrLn "Write a palindrome: "
   n <- getLine
   if n == (reverse n) then
      putStrLn "Well Done! That is a palindrome"
   else 
      putStrLn "That isnt a palindrome" >> linesPalindrome












