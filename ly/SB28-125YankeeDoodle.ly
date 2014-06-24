\version "2.13.60"
\language "english"

\header {
  title = "Yankee Doodle"
  instrument = "Cello"
  composer = "Traditional"
  tagline = "Engraved with LIlypond"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \tempo 4=120
  \key c \major
  \time 4/4
  \override BreathingSign #'text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
}

cello = \relative c {
  \global
 c4_\f_4\downbow c d e c e d b
 c c d e c2 b4 (g)
 c4\downbow c d e f e d c
 b g a b c2 c4 \breathe r4
 a4\p (b) a (g) a (b) c2 \breathe
 g4\downbow\f (a) g (f) e (f) g2
 a4\downbow (b) a (g) a (b) c (a)
 g c b d c2 c4 \breathe r4


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
