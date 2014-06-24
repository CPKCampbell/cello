\version "2.13.55"
\language "english"

\header {
  title = "Blue Butterflies"
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
  \override BreathingSign #'text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }

}

celloI = \relative c {
  \global
  \repeat volta 2 {
 e2^\downbow_\p f g a b a g f
 e4^\downbow_\f e f2 g4 g a2 b4 g ff f e \breathe r4 r2
}
}

celloII = \relative c {
  \global
\repeat volta 2 {
  c,2^\downbow\p d-1 e-3 f-4   g f e d
  c4^\downbow\f c'-4 a (f)
  e4 c f (d) g g a b c \breathe r4 r2
}
}

celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  shortInstrumentName = "Cl. I"
  midiInstrument = "cello"
} { \clef bass \celloI }

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  shortInstrumentName = "Cl. II"
  midiInstrument = "cello"
} { \clef bass \celloII }

\book {
  \score {
    <<
      \celloIPart
      \celloIIPart
    >>
    \layout { }
    \midi { }
  }
}
