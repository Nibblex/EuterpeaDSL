module Test.BadGuy where

import Song
import Euterpea

chord1PERRO = Parallel (Fragment [Note (qn/1.1) (G, 4)]) (Fragment[Note (qn/1.1) (Bf, 4)])
chord2PERRO = Parallel (chord1PERRO) (Fragment[Note (qn/1.1) (D, 4)])

chord1PERRO2 = Parallel (Fragment [Note (dqn/1.1) (G, 4)]) (Fragment[Note (dqn/1.1) (Bf, 4)])
chord2PERRO2 = Parallel (chord1PERRO2) (Fragment[Note (dqn/1.1) (D, 4)])

chord1PERRO3 = Parallel (Fragment [Note (en/1.1) (G, 4)]) (Fragment[Note (en/1.1) (Bf, 4)])
chord2PERRO3 = Parallel (chord1PERRO3) (Fragment[Note (en/1.1) (D, 4)])

chord3PERRO0 = Parallel (Fragment [Note (qn/1.1) (D, 4)]) (Fragment[Note (qn/1.1) (A, 4)])
chord3PERRO1 = Parallel (chord3PERRO0) (Fragment[Note (qn/1.1) (D, 5)])

chord4PERRO0 = Parallel (Fragment [Note (qn/1.1) (D, 4)]) (Fragment[Note (qn/1.1) (G, 4)])
chord4PERRO1 = Parallel (chord4PERRO0) (Fragment[Note (qn/1.1) (A, 4)])

chord4PERRO2 = Parallel (Fragment [Note (dqn/1.1) (D, 4)]) (Fragment[Note (dqn/1.1) (G, 4)])
chord4PERRO3 = Parallel (chord4PERRO2) (Fragment[Note (dqn/1.1) (A, 4)])

chord5PERRO0 = Parallel (Fragment [Note (qn/1.1) (D, 4)]) (Fragment[Note (qn/1.1) (A, 4)])
chord5PERRO1 = Parallel (chord5PERRO0) (Fragment[Note (qn/1.1) (D, 5)])

chord6PERRO0 =  Parallel (Fragment [Note (dhn/1.1) (A, 3)]) (Fragment[Note (dhn/1.1) (A, 4)])
chord6PERRO1 =  Parallel (Fragment [Note (wn/1.1) (G, 3)]) (Fragment[Note (wn/1.1) (G, 4)])
parch = Concat (Parallel (Fragment [Note (dhn/1.1) (A, 3)]) (Fragment[Note (dhn/1.1) (A, 4)])) (Parallel (Fragment [Note (wn/1.1) (G, 3)]) (Fragment[Note (wn/1.1) (G, 4)]))


badAuxUp =  Fragment [Rest (wn/1.1), 
          {-2-}       Rest (hn/1.1),Note (en/1.1) (Bf, 4), Note (en/1.1) (G, 4), Note (qn/1.1) (F, 4),
          {-3-}       Note (dqn/1.1) (G, 4), Note (en/1.1) (G, 4), Note (en/1.1) (Bf, 4), Note (qn/1.1) (G, 4), Note (qn/1.1) (G, 4),    
          {-4-}       Note (qn/1.1) (G, 4), Note (en/1.1) (G, 4), Note (en/1.1) (Bf, 4), Note (en/1.1) (G, 4), Note (qn/1.1) (F, 4),
          {-5-}       Rest (wn/1.1),
          {-6-}       Rest (hn/1.1), Note (en/1.1) (Ef, 5), Note (en/1.1) (C, 5), Note (qn/1.1) (Bf, 4),
          {-7-}       Rest (hn/1.1), Note (en/1.1) (Fs, 5), Note (qn/1.1) (D, 5), Note (qn/1.1) (D, 5), 
          {-8-}       Rest (en/1.1), Rest (qn/1.1), Rest (hn/1.1)]

badIntro2Up = Concat (Fragment [Note (qn/1.1) (Bf, 4), Note (dqn/1.1) (Bf, 4), Note (qn/1.1) (Bf, 4), Note (qn/1.1) (Bf, 4),
{-10-}                  Note (qn/1.1) (G, 4), Note (en/1.1) (G, 4), Note (qn/1.1) (C, 4)]) (badUp)

badUp = Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (
{-11-}   (chord1PERRO)) (Parallel (Fragment [Note (dqn/1.1) (G, 4)]) (Fragment[Note (dqn/1.1) (Bf, 4)]))) (Repeat 2 (chord1PERRO)))          
{-12-}   (Repeat 2 (chord1PERRO))) (Parallel (Fragment [Note (en/1.1) (G, 4)]) (Fragment[Note (en/1.1) (Bf, 4)])))
{-13-}   (chord2PERRO)) (chord2PERRO2)) (Repeat 4 chord2PERRO)) 
{-14-}   (chord2PERRO3)) (chord3PERRO1))
{-Revisar 15-}   (chord4PERRO1)) (chord4PERRO3)) (Repeat 2 chord4PERRO1))
{-Revisar 16-}   (Parallel (Fragment [Note (en/1.1) (G, 4)]) (Fragment[Note (en/1.1) (D, 4)]))) (Parallel (Fragment [Note (dqn/1.1) (Fs, 4)]) (Fragment[Note (dqn/1.1) (D, 4), Rest (en/1.1), Rest (qn/1.1)])))
{-17-}   (chord1PERRO)) (Parallel (Fragment [Note (dqn/1.1) (G, 4)]) (Fragment[Note (dqn/1.1) (Bf, 4)])))
{-18-}   (Parallel (Fragment [Note (en/1.1) (G, 4)]) (Fragment[Note (en/1.1) (Bf, 4)]))) (Parallel (Fragment [Note (en/1.1) (A, 4)]) (Fragment[Note (en/1.1) (C, 5)])))
{-19-}   (chord1PERRO)) (chord1PERRO2)) (Repeat 4 chord1PERRO))
{-20-}   (chord1PERRO2)) (chord1PERRO2)) (Parallel (Fragment [Note (en/1.1) (A, 4)]) (Fragment[Note (en/1.1) (C, 4)])))  
{-21-}   (chord2PERRO)) (chord2PERRO2)) (Repeat 4 chord2PERRO))
{-22-}   (chord2PERRO3)) (chord5PERRO1))
{-23-}   (chord4PERRO1)) (chord4PERRO3)) (Repeat 2 chord4PERRO1))
{-Revisar 24-}   (Parallel (Fragment [Note (en/1.1) (G, 4)]) (Fragment[Note (en/1.1) (D, 4)]))) (Parallel (Fragment [Note (qn/1.1) (Fs, 4)]) (Fragment[Note (qn/1.1) (D, 4), Rest (en/1.1), Note (en/1.1) (Bf, 4), Note (en/1.1) (C, 5), Note (en/1.1) (Bf, 4)]))) badUpMelody  
                
badUpMelody = Concat (Concat (Concat (
                      {-25-}    Fragment [Note (qn/1.1) (C, 5), Note (qn/1.1) (G, 4), Note (en/1.1) (Bf, 4), Note (en/1.1) (C, 5),  Note (en/1.1) (C, 5), Note (en/1.1) (Bf, 4),
                      {-26-}    Note (qn/1.1) (C, 5), Note (qn/1.1) (G, 4), Note (en/1.1) (Bf, 4), Note (en/1.1) (C, 5),  Note (en/1.1) (C, 5), Note (en/1.1) (Bf, 4),
                      {-27-}    Note (qn/1.1) (C, 5), Note (qn/1.1) (G, 4), Note (en/1.1) (Bf, 4), Note (en/1.1) (C, 5),  Note (en/1.1) (C, 5), Note (en/1.1) (Bf, 4),
                      {-28-}    Note (qn/1.1) (C, 5), Note (qn/1.1) (G, 4), Rest (qn/1.1), Note (en/1.1) (Bf, 4), Note (en/1.1) (C, 5),
                      {-29-}    Note (qn/1.1) (D, 5), Note (qn/1.1) (D, 5), Note (en/1.1) (Bf, 4), Note (en/1.1) (C, 5),  Note (en/1.1) (C, 5), Note (en/1.1) (Bf, 4),
                      {-30-}    Note (qn/1.1) (D, 5), Note (qn/1.1) (D, 5), Note (en/1.1) (Bf, 4), Note (en/1.1) (C, 5),  Note (en/1.1) (C, 5), Note (en/1.1) (Bf, 4),
                      {-31-}    Note (qn/1.1) (D, 5), Note (qn/1.1) (D, 5), Note (en/1.1) (Bf, 4), Note (en/1.1) (C, 5),  Note (en/1.1) (C, 5), Note (en/1.1) (Bf, 4),
                      {-32-}    Note (qn/1.1) (D, 5), Note (qn/1.1) (D, 5), Rest (qn/1.1), Note (en/1.1) (Bf, 4), Note (en/1.1) (C, 5)])
                      {-33-}    parch)
                      {-34-}    (Fragment [Note (qn/1.1) (G, 3),
                      {-35-}    Note (en/1.1) (G, 4), Note (qn/1.1) (D, 5), Note (en/1.1) (G, 4), Note (en/1.1) (Df, 5), Note (en/1.1) (Ds, 5), Note (en/1.1) (Df, 5), Note (en/1.1) (Bf, 4),
                      {-36-}    Note (en/1.1) (G, 4), Note (qn/1.1) (D, 5), Note (en/1.1) (G, 4), Note (en/1.1) (Df, 5), Note (en/1.1) (Ds, 5), Note (en/1.1) (Df, 5), Note (en/1.1) (Bf, 4),
                      {-37-}    Note (en/1.1) (G, 4), Note (qn/1.1) (D, 5), Note (en/1.1) (G, 4), Note (en/1.1) (Df, 5), Note (en/1.1) (Ds, 5), Note (en/1.1) (Df, 5), Note (en/1.1) (Bf, 4),
                      {-38-}    Note (en/1.1) (G, 4), Note (qn/1.1) (D, 5), Note (en/1.1) (G, 4), Note (en/1.1) (Df, 5), Note (en/1.1) (Ds, 5), Note (en/1.1) (Df, 5), Note (en/1.1) (Bf, 4),
                      {-39-}    Note (en/1.1) (C, 5), Note (qn/1.1) (G, 5), Note (en/1.1) (C, 5), Note (en/1.1) (Gf, 5), Note (en/1.1) (Gs, 5), Note (en/1.1) (Gf, 5), Note (en/1.1) (Gf, 5), Note (en/1.1) (Ef, 5),
                      {-40-}    Note (en/1.1) (C, 5), Note (qn/1.1) (G, 5), Note (en/1.1) (C, 5), Note (en/1.1) (Gf, 5), Note (en/1.1) (Gs, 5), Note (en/1.1) (Gf, 5), Note (en/1.1) (Gf, 5), Note (en/1.1) (Ef, 5),
                      {-41-}    Note (en/1.1) (D, 5), Note (qn/1.1) (A, 5), Note (en/1.1) (D, 5), Note (en/1.1) (G, 5), Note (en/1.1) (D, 5), Note (hn/1.1) (C, 5), 
                      {-42-}    Rest (dqn/1.1), Rest (qn/1.1), 
                      {-43-}    Note (qn/1.1) (Bf, 4), Note (dqn/1.1) (Bf, 4), Note (qn/1.1) (Bf, 4), Note (qn/1.1) (Bf, 4),
                      {-44-}    Note (qn/1.1) (Bf, 4), Note (qn/1.1) (Bf, 4), Note (en/1.1) (G, 4)]))
                      {-45/50-}    (badAux)
                          
        
        
        
badAux  = Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat (Concat 
                  {-45-} (chord1PERRO) (Parallel (Fragment [Note (dqn/1.1) (G, 4)]) (Fragment[Note (dqn/1.1) (Bf, 4)]))) (Repeat 2 (chord1PERRO)))          
                  {-46-}   (Repeat 2 (chord1PERRO))) (Parallel (Fragment [Note (en/1.1) (G, 4)]) (Fragment[Note (en/1.1) (Bf, 4)])))
                  {-47-}   (chord2PERRO)) (chord2PERRO2)) (Repeat 4 chord2PERRO)) 
                  {-48-}   (chord2PERRO3)) (chord3PERRO1))
                  {-49-}   (chord4PERRO1)) (chord4PERRO3)) (Repeat 2 chord4PERRO1))
                  {-50-}   (Parallel (Fragment [Note (en/1.1) (G, 4)]) (Fragment[Note (en/1.1) (D, 4)]))) (Parallel (Fragment [Note (qn/1.1) (Fs, 4)]) (Fragment[Note (dqn/1.1) (D, 4), Rest (hn/1.1)]))       


          
badAuxDown = Fragment [Note (dqn/1.1) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (qn/1.1) (G, 3), Note (qn/1.1) (G, 3),
          {-2-}        Note ((qn/1.1)) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (en/1.1) (G, 3), Note (qn/1.1) (F, 2),
          {-3-}        Note (dqn/1.1) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (qn/1.1) (G, 3), Note (qn/1.1) (G, 3),
          {-4-}        Note (qn/1.1) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (en/1.1) (G, 3), Note (qn/1.1) (F, 2),
          {-5-}        Note (dqn/1.1) (C, 3), Note (en/1.1) (C, 3), Note (en/1.1) (Ef, 3), Note (qn/1.1) (C, 3), Note (qn/1.1) (C, 3),
          {-6-}        Note (qn/1.1) (C, 3), Note (en/1.1) (C, 3), Note (en/1.1) (Ef, 3), Note (en/1.1) (C, 3), Note (qn/1.1) (Bf, 3),
          {-7-}        Note (dqn/1.1) (D, 3), Note (en/1.1) (D, 3), Note (en/1.1) (Fs, 4), Note (qn/1.1) (D, 3), Note (qn/1.1) (D, 3),
          {-8-}        Note (qn/1.1) (D, 2), Note (qn/1.1) (D, 2), Note (qn/1.1) (D, 2), Rest (en/1.1)
          ]

badIntro2 = Concat (Fragment [Note (dqn/1.1) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (qn/1.1) (G, 3), Note (qn/1.1) (G, 3), Note (qn/1.1) (G, 3), 
          {-10-}    Note (qn/1.1) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (en/1.1) (G, 3), Note (qn/1.1) (F, 3)]) (badDown)
          
badDown = Fragment [Note (dqn/1.1) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (qn/1.1) (G, 3), Note (qn/1.1) (G, 3), 
          {-12-}    Note (qn/1.1) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (qn/1.1) (G, 3), Note (qn/1.1) (F, 3),
          {-13-}    Note (dqn/1.1) (C, 3), Note (en/1.1) (C, 3), Note (en/1.1) (Ef, 3), Note (qn/1.1) (C, 3), Note (qn/1.1) (C, 3), 
          {-14-}    Note (qn/1.1) (C, 3), Note (en/1.1) (C, 3), Note (en/1.1) (Ef, 3), Note (en/1.1) (C, 3), Note (qn/1.1) (Bf, 3),
          {-15-}    Note (dqn/1.1) (D, 3), Note (en/1.1) (D, 3), Note (en/1.1) (Fs, 3), Note (qn/1.1) (D, 3), Note (qn/1.1) (D, 3), 
          {-16-}    Note (qn/1.1) (D, 2), Note (qn/1.1) (D, 2), Note (qn/1.1) (D, 2), Rest (en/1.1), 
          {-17-}    Note (dqn/1.1) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (qn/1.1) (G, 3), Note (qn/1.1) (G, 3),
          {-18-}    Note (qn/1.1) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (qn/1.1) (G, 3), Note (qn/1.1) (F, 3), 
          {-19-}    Note (dqn/1.1) (G, 3), Note (qn/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (qn/1.1) (G, 3), Note (qn/1.1) (G, 3), 
          {-20-}    Note (qn/1.1) (G, 3), Note (en/1.1) (G, 3), Note (en/1.1) (Bf, 3), Note (en/1.1) (G, 3), Note (qn/1.1) (F, 3),
          {-21-}    Note (dqn/1.1) (C, 3), Note (en/1.1) (C, 3), Note (en/1.1) (Ef, 3), Note (qn/1.1) (C, 3), Note (qn/1.1) (C, 3), 
          {-22-}    Note (qn/1.1) (C, 3), Note (en/1.1) (C, 3), Note (en/1.1) (Ef, 3), Note (en/1.1) (C, 3), Note (qn/1.1) (Bf, 3), 
          {-23-}    Note (dqn/1.1) (D, 3), Note (en/1.1) (D, 3), Note (en/1.1) (Fs, 3), Note (qn/1.1) (D, 3), Note (qn/1.1) (D, 3), 
          {-24-}    Note (qn/1.1) (D, 2), Note (qn/1.1) (D, 2), Note (qn/1.1) (D, 2), Rest (en/1.1), 
          {-25-}    Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3), Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3),
          {-26-}    Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3), Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3),
          {-27-}    Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3), Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3),
          {-28-}    Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Rest (en/1.1), Rest (hn/1.1),
          {-29-}    Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4), Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4),
          {-30-}    Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4), Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4),
          {-31-}    Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4), Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4),
          {-32-}    Note (en/1.1) (D, 3), Note (en/1.1) (A, 4), Note (en/1.1) (D, 4), Rest (qn/1.1), Rest (hn/1.1),
          {-33-}    Note (dhn/1.1) (A, 3), Note (wn/1.1) (A, 3),
          {-34-}    Rest (qn/1.1),
          {-35-}    Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3), Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3),
          {-36-}    Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3), Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3),
          {-37-}    Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3), Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3),
          {-38-}    Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3), Note (en/1.1) (G, 3), Note (en/1.1) (D, 3), Note (en/1.1) (F, 4), Note (en/1.1) (D, 3),
          {-39-}    Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4), Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4),
          {-40-}    Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4), Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4),
          {-41-}    Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4), Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4),
          {-42-}    Note (en/1.1) (G, 3), Note (en/1.1) (C, 3), Note (en/1.1) (G, 4), Note (en/1.1) (C, 4), Note (en/1.1) (G, 4), Note (qn/1.1) (D, 2), Note (qn/1.1) (D, 2),
          {-43-}    Rest (wn/1.1),
          {-44-}    Rest (wn/1.1),
          {-45-}    Rest (wn/1.1),
          {-45-}    Rest (wn/1.1),
          {-46-}    Rest (wn/1.1),
          {-47-}    Rest (wn/1.1),
          {-48-}    Rest (wn/1.1),
          {-49-}    Rest (wn/1.1),
          {-50-}    Rest (wn/1.1)]

testo = Parallel badAuxUp badAuxDown
badMix = Parallel badIntro2 badIntro2Up
volta = Parallel badUp badDown

fullSong = testo `Concat` badMix `Concat` volta
