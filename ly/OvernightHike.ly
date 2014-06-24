\version "2.13.57"
\language "english"

\header {
  title = "An Overnight Hike"
  instrument = "Cello duet"
  composer = "F. Wohlfahrt"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \tempo 4=96
  \key c \major
  \time 4/4

}

celloI = \relative c {
  \global
\repeat volta 2 {
c,2\downbow\f d4 (e) d2 e4 (f) e e f-4 g f (g) a (b)
c\downbow\p d e f g a b a g f e d c r4 r2
}
\repeat volta 2 {

d2\downbow\p c4 (d) e2 d4 (e) f2 e4 (f) g f e d
c2\downbow\f b4 (a) g (f) e (d) c e g e c r4 r2
}
}
celloII = \relative c {
  \global
   \repeat volta 2 {
 c,4 e g c b d c b c c, d e d2 f
 e4\downbow g c d e f g f e d c g c r4 r2
}
\repeat volta 2 {
 b2\downbow a4 (b) c e g c, d2 c4 (d) e d c g'
 e2\downbow g4 (f) e (d) c (b) c r4 e\downbow r4 e\downbow r4 r2
}
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
}

\score {
  \unfoldRepeats {
  <<
    \celloIPart
    \celloIIPart
  >>
}

  \midi { }
}