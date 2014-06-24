\version "2.17.30"
\language "english"

\header {
  title = "Short Prelude"
  subtitle = "Cello Ensemble"
  tagline = ##f
}

global = {
  \time  4/4
  \tempo  "Adagio"
}

celloIa = \relative c {
  \global
  s2 r4 c' s1 s2 r4 a s1 a2. b4 c1  \bar "|." 
}

celloIb = \relative c {
  \global
  r2 e2 r2 a8 (c b4) 
  r2 e,2 r2 e8 (g fs4)
  r2 d r4 e2.  \bar "|."
}

celloIIa = \relative c {
  \global
  r4 g2. r4 d2. r4 a'2. r4 a2. r4 f'2 g4 s1 \bar "|."
}
celloIIb = \relative c {
  \global
  c,1 g'1 c,1 d1 r2 r4 g r2 <g c>2 \bar "|."
}

celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
} { \clef bass  <<\celloIa \\ \celloIb >> }

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  midiInstrument = "cello"
} { \clef bass << \celloIIa \\ \celloIIb >> }

\score {
  \new GrandStaff
  <<
    \celloIPart
    \celloIIPart
  >>
  
  \layout {
    \override Slur.minimum-length = #5 
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
