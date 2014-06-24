\version "2.17.8"
\language "english"

\header {
  title = "Marching Martians"
  instrument = "Cello duet"
  composer = "Rick Mooney"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \numericTimeSignature
  \time 5/4
  \tempo 4=92
}

xt = \markup { \finger "x1" }

celloI = \relative c {
  \global
  % Music follows here.
  f,4\f c8 c f4 a8 a c4 g-0 g8-2 g a4 g8^\xt f g4 
  c4^\xt d8 e d4 d8-0 e-1 f4 e8 [g e c] a4 b c
  f,4\f c8 c f4 a8 a c4 g-0 g8-2 g a4 g8^\xt f g4 
  c4^\xt d8 e d4 d8-0 e-1 f4 c8 [bf a g] f4 c f
  
}

celloII = \relative c {
  \global
  % Music follows here.
  r8 <f a>-.\upbow r8 <f a>-.\upbow r8 <f a>-.\upbow r8 <f a>-.\upbow r8 <f a>-.\upbow
  r8 <e c'>-.^"simile" r8 <e c'>-. r8 <f c'>-. r8 <f c'>-. r8 <e c'>-.
  r8 <e c'>-. r8 <g c>-. r8 <g b>-. r8 <g b>-. r8 <g b>-.
  r8 <e c'>-. r8 <e c'>-. r8 <f c'>-. r8 <f d'>-. r8 <e c'>-.
  r8 <f a>-.\upbow r8 <f a>-.\upbow r8 <f a>-.\upbow r8 <f a>-.\upbow r8 <f a>-.\upbow
  r8 <e c'>-. r8 <e c'>-. r8 <f c'>-. r8 <f c'>-. r8 <e c'>-.
   r8 <e c'>-. r8 <g c>-. r8 <g b>-. r8 <g b>-. r8 <g b>-.
   r8 <e c'>-. r8 <e c'>-. r8 <f a>-. r8 <f c'>-. r8 <a f'>-.
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
