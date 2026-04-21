module SpartacusSearch where

spartacusSearch :: Show a => [a] -> a -> IO [a]
spartacusSearch haystack _needle = do
    mapM_ print haystack
    return haystack

main :: IO ()
main = do
    results <- spartacusSearch [1, 2, 3, 4, 5 :: Int] 3
    putStrLn $ "found " ++ show (length results) ++ " matches"
