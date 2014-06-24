\version "2.13.55"
\language "english"

\header {
  title = "My Pet Pony"
  subtitle = "German Folk Song"
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

cello = \relative c {
  \global
  \repeat volta 2 {
g2_\f^\upbow b d r2 d4^\upbow_\p (c) b (a) g2 \breathe r2
a'4^\downbow_\f a fs (d)
d' d b (g) a^\downbow_\p a fs (d)
d' d b ( g) g,_\f (a) b (c) d2 r2
d4^\upbow_\p (c\cresc ) b a
g2_\f  \breathe r2
}
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
