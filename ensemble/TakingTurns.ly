\version "2.17.30"
\language "english"

\header {
  title = "Taking Turns"
  tagline = ##f
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=84
}

celloI = \relative c {
  \global
  c4 d e f g c a g c r4 g\upbow r e\downbow r4 r2 |
  f4\downbow g e r e\upbow f d r |
  c4\downbow e g e d e d g c r g\upbow r e r4 r2 |
  f4\downbow d e r c\upbow b c r f\downbow d e  c c b c r
  \bar "|."
}

celloII = \relative c {
  \global
  c4 r g\upbow r e r4 r2 c4\downbow d e f g c a g |
  d'4 b c g c a b g a g e c |
  g'4 c g g c, d e f g c a b a b c a e g e c a' b c a e g c, r4
  
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
\midi {}
}
