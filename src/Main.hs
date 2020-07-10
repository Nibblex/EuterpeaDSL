import Song
import Euterpea

import Text.Read

import Test.BadGuy


playSong :: Maybe Int -> Maybe (Music Pitch) -> IO()
playSong (Just n) (Just m) = playDev n m
playSong _ _ = error "Not a valid Song or device id"

main :: IO()
main = do
    putStrLn "Enter device id:"
    n <- getLine
    playSong (readMaybe n) $ compute $ fullSong