# A DSL IMPLEMENTATION WITH EUTERPEA #

## Project description ##
Broadly speaking, the program has commands to create a song. The song consists of a *stack* of
fragments. The fragments consist of a series of notes and rests built from certain commands
listed below. When the program is over, the first fragment of the stack is considered to be the
final song, which may be the result of combining other fragments.
The types `Song` and `Command` were defined, the first one has the necessary constructors
for creating a basic song and the second one has the constructors necessary to define
a command capable of being executed on one or more `Song` of the stack.

This project has been carried out using the `Euterpea` library (http://euterpea.com/).

## Installation ##
To install `Euterpea`, you must first have Haskell and Cabal installed.
In a ubuntu 18.04, the following commands are sufficient:
    `$ sudo apt-get install haskell-platform`
    `$ sudo apt-get install libasound2-dev`
    `$ cabal update`
    `$ cabal install Euterpea`

To install `Timidity` service:
    `$ sudo apt install timidity`

## Compile and run ##
To compile run `cabal build` command in the main directory.
If you want to run, use the command `cabal run` with `Timidity` service running in background,
this will play a fantastic song written in the `BadGuy.hs` file.
To clean the project use the `cabal clean` command.

Note: You can execute `Timidity` service with `timidity -iA -Os` in terminal. Note that main
program will ask you to enter the device id. You can use the `Euterpea` `devices` function
in haskell repl `ghci` to list possible devices.

...

Output devices:
  OutputDeviceID 0  Midi Through Port-0
  OutputDeviceID 2  TiMidity port 0
  ...

Then you should use 2 as device id

## Files ##
`Main.hs`: Contains the `main` function responsible for executing the test song.
           ...
`Song.hs`: Contains the `Song` type definition and the following functions,
    -`toSong`: Turns a `Music Pitch` (from `Euterpea`) into a `Song` (defined in the same file).
    -`transpose_by`: Transpose a `Song` in i semitones (equivalent to `transpose` of `Euterpea`                 for our language).
    -`repeatSong`: Concatenate i times a `Song` with itself (equivalent to `times` of `Euterpea`
                   for our language).
    -`unfold`: Processes a `Song` in such a way that it applies the semantics of the
               `Transpose_by` and `Repeat` constructors.
    -`compute`: Processes a `Song` in such a way that it applies the semantics of the constructors
                `Concat` and `Parallel`, delegating the previous constructors to `unfold`.
                At this point a `Song` becomes a `Music Pitch` playable by `Euterpea`.
    -`time`: Computes a `Song` total duration.

`Command.hs`: Contains the `Command` type definition and the following function,
    -`run`: Given a list of `Command a` and a stack of `a`, it applies a command sequence pushing
            the result of each command in the stack. (Notice that it is a polymorphic function
            but in our case the `a` type represents a `Song`).

`BadGuy.hs`
A beautiful song from a beautiful singer for program testing.  Enjoy :)
