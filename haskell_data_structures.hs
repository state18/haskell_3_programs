import Data.List
import qualified Data.Map as Map

-- Data Structures of Haskell --

-- Lists --

list = [1,2,3,4,5]

-- Some things to do with lists...

-- Access first element in list
firstEle = head list

-- Get largest value
maxValue = maximum list

-- Generate infinite list cycle (only generates first 15 elements to avoid infinite loop!)
infiniteList = take 15 (cycle list)

-- List of lists
nestedList = [list,list]

-- Apply a function to each element of list using map.
times2 x = x*2
doubledList = map times2 list



-- Tuples --
-- Tuples may hold multiple data types but are immutable...

tuple = ("Apple",24)
stringList = ["Ant","Beaver","Bird"]
numList = [4,2,9]
-- Get first element in tuple
firstTuple = fst tuple

-- Zip takes lists and combines them into a list of tuples, pairing up corresponding elements.
zippedTuples = zip stringList numList


-- Maps --

-- Create key/value pairs as list of tuples.
kv = [(1,"A"), (2,"B"), (3,"C")]
-- Turn that list of tuples into a map.
testMap = Map.fromList kv
-- Grab the value of key 2
secondValue = testMap Map.! 2

-- Display above code to console
main = do
    putStrLn "--Lists--"
    putStrLn "In this list: [1,2,3,4,5]..."
    putStrLn ("The first element is: " ++ show firstEle)
    putStrLn ("The largest value is: " ++  show maxValue)
    putStrLn ("You can use cycle to generate infinite lists! (First 15 elements displayed): " ++ show infiniteList)
    putStrLn ("You can have lists inside of lists such as: " ++ show nestedList)
    putStrLn ("A function can be applied to each list element using map such as x * 2: " ++ show doubledList)
    
    putStrLn "\n--Tuples--"
    putStrLn "Tuples may hold multiple data types but are immutable..."
    putStrLn ("Let tuple = ('Apple',24). Its first element is: " ++ show firstTuple)
    putStrLn ("You can zip lists together into tuples. ['Ant','Beaver','Bird'] zipped with [4,2,9] is: " ++ show zippedTuples)
    
    putStrLn "\n--Maps--"
    putStrLn ("Maps can be created from lists of tuples holding key/value pairs: " ++ show kv)
    putStrLn ("The value retrieved from key 2 is: " ++ show secondValue)
    
    putStrLn "\nPress Enter to exit."
    waiting <- getChar
    putStrLn "Exiting..."