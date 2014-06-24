\version "2.13.55"
\language "english"

\header {
  title = "Come, Beautiful May"
  subtitle = "Russian Folk Song"
  instrument = "Cello"
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \tempo 4=100
  \key c \major
  \time 4/4
}

cello = \relative c {
  \global
 g4^\downbow_\f a b c d e d r4  d, e d r4
 g4^\downbow_\p a b c d e d r4 d,e d r4
 a'4^\downbow_\f a a a a2 a4 b-3
 c d b r4 a^\downbow a a a
 a2 a4 b c a g2


}

\book {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \cello }
    \layout { }
    \midi { }
  }
}
