module Song where

import Euterpea


{- Necessary datatype to carry out our constructions -}
data Song = Fragment [Primitive Pitch]
          | Transpose_by Int Song
          | Repeat Int Song
          | Concat Song Song
          | Parallel Song Song
          deriving (Show, Eq)

{- Turns a Music Pitch (from Euterpea) into a Song (our datatype) -}
toSong :: Music Pitch -> Song
toSong (Prim note) = Fragment [note]
toSong (m1 :+: m2) = Concat (toSong m1) (toSong m2)
toSong (m1 :=: m2) = Parallel (toSong m1) (toSong m2)
toSong (Modify (Transpose i) m) = toSong $ mMap (trans i) m

{- Transpose a Song by i semitones -}
transpose_by :: Int -> Song -> Maybe Song
transpose_by i s = compute s >>= (\m -> return (toSong $ transpose i m))

{- Concatenates i times a Song with itself -}
repeatSong :: Int -> Song -> Maybe Song
repeatSong i s | i < 0 = Nothing
               | otherwise = compute s >>= (\m -> return (toSong $ times i m))

{- Aplies the semantics of the Transpose_by and Repeat constructors -}
unfold :: Song -> Maybe Song
unfold (Fragment []) = Nothing
unfold (Fragment ns) = Just $ Fragment ns
unfold (Transpose_by i s) = transpose_by i s
unfold (Repeat i s) = repeatSong i s
unfold (Concat s s') = Concat <$> unfold s <*> unfold s'
unfold (Parallel s s') = Parallel <$> unfold s <*> unfold s'

{- Processes a Song so it can be played by Euterpea -}
compute :: Song -> Maybe (Music Pitch)
compute (Fragment []) = Nothing
compute (Fragment ns) =
    case ns of
        [a] -> Just $ Prim a
        (a:ns) -> compute (Fragment ns) >>= (\r -> return $ (Prim a) :+: r)
compute (Concat s s') = (:+:) <$> compute s <*> compute s'
compute (Parallel s s') = (:=:) <$> compute s <*> compute s'
compute s = unfold s >>= compute

{- Given a song calculate its total duration -}
time :: Song -> Maybe Dur
time s = compute s >>= return . dur