\version "2.17.8"
\language "english"

\header {
  title = "Dreamland"
  instrument = "Cello duet"
  composer = "Rick Mooney"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key d \major
  \time 4/4
  \tempo 4=92
 }
xt = \markup { \finger "x1" }

celloI = \relative c {
  \global
  % Music follows here.
  d4-0\p (a'-2) fs'-4 (d^\xt) d,-0 (a'-0) cs-3 (a) 
  d,-0 ( a'-2) b-4 (g^\xt) a2-2 a,-1 
  d4-0\p (a'-2) fs'-4 (d^\xt) b-4 (a) g (b) a-2 d,-2 e-4 cs-1 d2-2 d\harmonic
}

celloII = \relative c {
  \global
  % Music follows here.
 d,8 b' a fs d b' a fs d a' cs b a cs b a
g e'd b g e' d b a fs' g e a,4 <cs' g a,> 
 d,8 b' a fs d b' a fs g e'd b g e' d b
 a g a g a g a g d,b' a g' <d, a' fs'>2
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
  \midi { }
}
