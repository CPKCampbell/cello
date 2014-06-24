\version "2.13.61"
\language "english"

\header {
  title = "Llwyn Onn"
  subtitle = "The Ash Grove"
  instrument = "Flute and Two cellos"
  composer = "Traditional"
  arranger = "Campbell"
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \tempo 4=100
  \key a \major
  \time 3/4
  \partial 4
}

celloI = \relative c {
  \global
  % Music follows here.
  \partial 4 e,4_\p
  a cs e cs a a b d b
  gs e e a cs a fs d fs e a gs a2 e4
  a cs e cs a a b d b
  gs e e a cs a fs d fs e a gs a2 e4
  a cs e e d cs b d d d cs b a cs cs cs b a b e ds e2 e,4
  a cs e cs a a b d b
  gs e e a cs a fs d fs e a gs a2 \bar "|."
}

celloII = \relative c {
  \global
  % Music follows here.
  \partial 4 r4
  cs'2. e fs b, a a a2 b4
  % bar 8
  <a cs>2 r4
  cs2. e fs b, a a a2 b4
  %bar 17
  a2 r4 a2 cs4 cs b a gs2  b4 b a gs
  a2.~ a2. gs 2 a4 gs b d
  cs2. e fs b, a a <a e'>2 <d b>4 <cs a>2

}

celloIII = \relative c' {
  \global
\partial 4 r4
a'2 e4 a cs cs, d fs d e gs e cs e cs d fs d e cs e
%bar 8
<a a,>2 r4
a2 e4 a cs cs, d fs d e gs e cs e cs d fs d e cs e <a a,>2 r4
%bar 17
e2.~ e e~ e cs4 e e e d cs b2. e
a2 e4 a cs cs, d fs d e gs e cs e cs d fs d e cs e <a a,>2

}
celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  shortInstrumentName = "Cl. I"
  midiInstrument = "flute"
} { \clef bass \celloI }

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  shortInstrumentName = "Cl. II"
  midiInstrument = "cello"
} { \clef bass \celloII }

celloIIIPart = \new Staff \with {
  instrumentName = "Cello III"
  shortInstrumentName = "Cl. III"
  midiInstrument = "cello"
} { \clef bass \celloIII }

\book {
  \score {
    <<
      \celloIPart
      \celloIIPart
      \celloIIIPart
    >>
    \layout { }
    \midi { }
  }
}
