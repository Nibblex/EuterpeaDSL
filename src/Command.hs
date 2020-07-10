module Command where


{- Data type required to build commands -}
data Command a = Add a
               | Use1 Int (a->a)
               | Use2 Int Int (a->a->a)

{- Apply a list of commands pushing the result of every single command in the given stack of
   'a' (in our case 'Song'), the finished song will be in the head of the stack -}
run :: [Command a] -> [a] -> Maybe [a]
run [] l' = Just l'
run ((Add x):l) l' = run l (x:l')
run ((Use1 i f):l) l' | i < 0 || i >= length l' = Nothing
                      | otherwise = run l l' >>= (\r -> return $ f (l'!!i):r)
run ((Use2 i j f):l) l' | i < 0 || j < 0 || i >= length l' || j >= length l' = Nothing
                        | otherwise = run l l' >>= (\r -> return $ f (l'!!i) (l'!!j):r)
