import Song
import Euterpea

import Test.BadGuy


playSong :: Maybe (Music Pitch) -> IO()
playSong (Just m) = playDev 2 m
playSong Nothing = error "Not a valid Song"

main :: IO()
main = playSong $ compute $ fullSong