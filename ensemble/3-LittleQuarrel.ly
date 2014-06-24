\version "2.17.30"
\language "english"

\header {
  title = "A Little Quarrel"
  tagline = ##f
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=84
}

celloI = \relative c {
  
  e4 g g r e\upbow g g r e\downbow g g e d d d r |
  r2 e4\downbow g g r e g g r c, g r c,\upbow c_\markup { \italic "Fine" } r \bar "|."
  d'4\downbow d d e f f f r r d\upbow b g c c, c r |
  e'4\downbow e e f g g g r e\upbow e e fs g g g r |
  e e e fs g g, g' g^\markup { \italic \center-align "D.C. al fine" }
  \bar "|."
}

celloII = \relative c {
  r2 e4 g g r e g g r e\downbow c g g g r e'\downbow g g r e\upbow g g r |
  e g e d c c c_\markup { \italic "Fine" } r4 \bar "|."
  R1 d4 d d e f f f r e\upbow e e f g g g r |
  e4\downbow e e d c c a d r b e d r c a d g, r4 r2^\markup { \italic "D.C. al fine" }  \bar "|."
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