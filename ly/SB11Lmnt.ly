\version "2.17.14"
\language "english"

\header {
  title = "String Builder 2"
  subtitle = "Pg 11 - Lament"
  instrument = "cello duet"
  composer = "Rick Mooney"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
}

celloI = \relative c {
  \global
 d4\mp (e8 f) a4-0 ( d-2) a-4 (gs-3) a2 |
 f4-2 (e) d8 ([bf a g]) a2~ a8 ([b^"x2" cs e]) |
 d8\< ([e f a]) d-2 ([cs-1 d e-4])\!
 d4 (cs) d (a-4) g-2\> (gs) a2 d,2.-0\! r4
 %9
  d'4\f\downbow (a) bf (g) f8 ([g f e ]) d2 |
  d4 d8\> ([c] bf [a] g4 ) g'-2 cs,-3 d2-4\! |
  d8-0 ([e-1 f e ]) d4 (d'-2) cs8 ([d e cs]) d2 |
  g,4\> (gs a ) e' d2. r4\!
}

celloII = \relative c {
  \global
 d2\upbow g8 ([f) e (d)] e2 a, d, f e r2 |
 d'4\downbow a f a d,2 f bf2. a4 d2. r4 |
 d,2\downbow g a d, g1 g2 <a d,> |
 d4\upbow a~ a8 [ bf (a g]) a4 ( g') f8 ([e d c ]) |
 bf2 a d2. r4
  
}

celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
} { \clef bass \celloI }

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  midiInstrument = "cello"
} { \clef bass \celloII }

\score {
  <<
    \celloIPart
    \celloIIPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 66 4)
    }
  }
}
