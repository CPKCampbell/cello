\version "2.13.61"
\language "english"

\header {
  title = "Llwyn Onn"
  subtitle = "The Ash Grove"
  instrument = "Cello Duet or Trio"
  composer = "Traditional"
  arranger = "Ian Cantor, Colin Campbell"
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \tempo 4=100
  \key c \major
  \time 3/4
  \partial 4
}

celloI = \relative c {
  \global
  % Music follows here.
  \partial 4 g4_\p
  c\downbow e g e c c d\downbow f d
  b g g c\downbow e c a f a g\downbow c b c2\upbow g4_\mf\upbow
  c\downbow e g e c c d\downbow f d
  b g g c\downbow e c a f a g\downbow c b c2\upbow g4_\mf\downbow
  c e g g\downbow f e d f f f\downbow e d c\<\upbow e e 
  e\downbow d c d\!\upbow g\> fs g2\downbow g,4\!\p
  c\downbow e g e c c d f d
  b g g c e c a f a g\downbow c\upbow b\upbow c2 \bar "|."
}

celloII = \relative c, {
  \global
  % Music follows here.
  \partial 4 r4
  e'2.\p g a d, c c c2 d4
  % bar 8
  <c e>2 r4
  e2.\mp g a d, c c c2 d4
  %bar 17
  c2 r4 c2 e4 e d c b2  d4 d c b
  c2.~ c2. b 2 c4 b d f\p
  e2. g a d, c c <c g'>2 <f d>4 <e c>2

}

celloIII = \relative c {
  \global
\partial 4 r4
c'2\p g4 c e e, f a f g b g e g e f a f g e g
%bar 8
<c c,>2 r4
c2\mp g4 c e e, f a f g b g e g e f a f g e g <c c,>2 r4
%bar 17
g2.~ g g~ g e4 g g g f e d2. g\p
c2 g4 c e e, f a f g b g e g e f a f g e g <c c,>2

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
