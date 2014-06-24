\version "2.17.30"
\language "english"

\header {
  title = "March"
  tagline = ##f
}

global = {
  \time  4/4
  \tempo  "" 4 = 112 - 120
}

celloI = \relative c {
  <g c,>4^"pizz." q q r4 R1 e'4^"arco"\downbow e e d8 e f4 f f r |
  d4\downbow d d e8 f e4 e e r g4\downbow e8 c g4 c8 e g4 g g r |
  g4\downbow e8 c g4 c8 e g4 g g r <g, c,>4^"pizz." q q r4 r1 |
  e'8^"arco (marcato)" e e e e4 d8 e f4 f8 f f4 r |
  d8\downbow^"simile" d d d d4 e8 f e4 e8 e e4 r |
  g4\downbow e8 c g4 r r8 g'\upbow e c g4 r |
  r8 g'\upbow g g g g e (c) g'4 g, c\upbow c8 c c4 c8 c c4 r |
  < c' e,>4-> r <c d,>-> r <c e,>-> r4 r2 \bar "|."
  
}

celloII = \relative c {
  \global
  R1 <g c,>4\f^"pizz." q\> q r4 <g c,>4\mf q q r4
  <g c,>4 q q r4 <g c,>4 q q r4 <g c,>4 q q r4 R1 |
  g'4\f\downbow^"arco" e8 c g4 c8 e g4 g g r |
  g4\downbow e8 c g4 g c, r4 r2 |
  <g' c,>4\f^"pizz." q\> q r4 <g c,>4\mf q q r4
  <g c,>4 q q r4 <g c,>4 q q r4 <g c,>4 q q r4 |
  r2 g'4\downbow^"arco" e8 c g4 r r8 g'\upbow e c g4 r r8 g'\upbow g g |
  g8 g f (d) c4\upbow c,8 c c4 c8 c c4 r |
  <g' c,>4->\downbow r  <a c,>4->\downbow r  <g c,>4->\downbow r  r2 \bar "|."
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
  \new GrandStaff
  <<
    \celloIPart
    \celloIIPart
  >>
  
  \layout { 
    \override BreathingSign #'text = \markup { \musicglyph #"scripts.caesura.straight" }
  \set Score.markFormatter = #format-mark-circle-barnumbers
  #(layout-set-staff-size 20)
  \context {
    \Staff
    \override VerticalAxisGroup #'default-staff-staff-spacing
    #'basic-distance = #12
  }
}
\midi { }
}
