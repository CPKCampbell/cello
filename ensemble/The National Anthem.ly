\version "2.17.96"
\language "english"

\header {
  title = "The National Anthem"
  tagline = ##f
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/2
  \tempo "Nobilmente" 2=58
}

celloI = \relative c {
  \global
  g'2-4\mp g a-0 fs2.-3 g4-4 a2-4 |
  b2 b c b2. a4 g2-4 a-0 g-4 fs-3 g1.-4\< |
  d'2\f d d d2. c4 b2 c2 c c c2. b4 a2 |
  b2\< c4 (b) a (g) b2. c4 d2-2 |
  e4-4\downbow\ff c-2\upbow b2 a g1. \bar "|."
  
}

celloII = \relative c {
  \global
  b2\mp d e d2. e4 fs2 g g a g2. fs4 e2 e e d b1.\< |
  d'2\f c b a fs g e a a a g fs g1\< e2 |
  g (fs) f e4\ff a g2 fs g1. \bar "|."
  
}

celloIII = \relative c {
  \global
  g2\mp b c d1. g2 e c d2. d4 e2 c a d g,1.\< |
  b'2\f a g fs d g a, a' g fs g d g,1\< c2 |
  e2 d4 (c) b (g) c,2\ff d d g1. \bar "|."
  
}

celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
} { \clef bass \celloI }

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  midiInstrument = "cello"
} { \clef bass \celloII }

celloIIIPart = \new Staff \with {
  instrumentName = "Cello III"
  midiInstrument = "cello"
} { \clef bass \celloIII }

\score {
  \new GrandStaff
  <<
    \celloIPart
    \celloIIPart
    \celloIIIPart
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
