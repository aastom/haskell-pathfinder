module Main where

import qualified Data.Text.IO as TIO
import Lib

-- | The main entry point for the application.
-- This simple version prints a welcome message, reads a line, and echoes it back.
main :: IO ()
main = do
  TIO.putStrLn "Welcome to Haskell Pathfinder!"
  TIO.putStrLn "Enter a line and I will echo it back:"
  line <- TIO.getLine
  TIO.putStrLn $ "You entered: " <> line
