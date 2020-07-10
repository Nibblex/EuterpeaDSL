module Song where

import Euterpea


{- Tipo de datos Necesario para realizar nuestras construcciones -}
data Song = Fragment [Primitive Pitch]
          | Transpose_by Int Song
          | Repeat Int Song
          | Concat Song Song
          | Parallel Song Song
          deriving (Show, Eq)

{- Convierte un Music Pitch en un Song -}
toSong :: Music Pitch -> Song
toSong (Prim note) = Fragment [note]
toSong (m1 :+: m2) = Concat (toSong m1) (toSong m2)
toSong (m1 :=: m2) = Parallel (toSong m1) (toSong m2)
toSong (Modify (Transpose i) m) = toSong $ mMap (trans i) m

{- Transpone un Song en i semitonos -}
transpose_by :: Int -> Song -> Maybe Song
transpose_by i s = compute s >>= (\m -> return (toSong $ transpose i m))

{- Concatena i veces un Song con sigo mismo -}
repeatSong :: Int -> Song -> Maybe Song
repeatSong i s | i < 0 = Nothing
               | otherwise = compute s >>= (\m -> return (toSong $ times i m))

{- Aplica la semántica de los constructores Transpose_by y Repeat -}
unfold :: Song -> Maybe Song
unfold (Fragment []) = Nothing
unfold (Fragment ns) = Just $ Fragment ns
unfold (Transpose_by i s) = transpose_by i s
unfold (Repeat i s) = repeatSong i s
unfold (Concat s s') = Concat <$> unfold s <*> unfold s'
unfold (Parallel s s') = Parallel <$> unfold s <*> unfold s'

{- Procesa un Song para que pueda ser interpretado por Euterpea -}
compute :: Song -> Maybe (Music Pitch)
compute (Fragment []) = Nothing
compute (Fragment ns) =
    case ns of
        [a] -> Just $ Prim a
        (a:ns) -> compute (Fragment ns) >>= (\r -> return $ (Prim a) :+: r)
compute (Concat s s') = (:+:) <$> compute s <*> compute s'
compute (Parallel s s') = (:=:) <$> compute s <*> compute s'
compute s = unfold s >>= compute

{- Dado un song calcula su duración total -}
time :: Song -> Maybe Dur
time s = compute s >>= return . dur