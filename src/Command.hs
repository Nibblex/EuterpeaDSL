module Command where


{- Tipo de datos necesario para construir comandos -}
data Command a = Add a
               | Use1 Int (a->a)
               | Use2 Int Int (a->a->a)

{- Aplica una lista de comandos a un stack de a (en nuestro caso Song)
y al resultado lo inserta en la cabeza de dicho stack, devuelve el stack -}
run :: [Command a] -> [a] -> Maybe [a]
run [] l' = Just l'
run ((Add x):l) l' = run l (x:l')
run ((Use1 i f):l) l' | i < 0 || i >= length l' = Nothing
                      | otherwise = run l l' >>= (\r -> return $ f (l'!!i):r)
run ((Use2 i j f):l) l' | i < 0 || j < 0 || i >= length l' || j >= length l' = Nothing
                        | otherwise = run l l' >>= (\r -> return $ f (l'!!i) (l'!!j):r)
