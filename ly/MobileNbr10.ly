\version "2.17.5"
\language "english"

\header {
  title = "Mobile No. 10"
  instrument = "Cello"
  composer = "Karl A. Forssmark"
  meter = "Allegretto"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \time 4/4
 
  \tempo "Allegretto" 4=110
}

cello = \relative c {
  \global
  f4-.\upbow\mf (f-.) f4\downbow (e8 f) |
  g4-.~g-. g-1 (a-3) bf-.-4~ bf-. bf (a8 g) |
  a4-. (g-.) f2-2 |
 f4-.\upbow\mf (f-.) f4\downbow (e8 f) |
 g4-.~g-. g-1\< (a-3) bf8-4 (a) g (f'-4) e4-. (d-.)\! d2-4\> (c4) r4\!
}

\score {
  \new Staff \with {
    instrumentName = "Cello"
    midiInstrument = "cello"
  } { \clef bass \cello }
  \layout { }
  \midi { }
}
