\version "2.18.0"
\language "english"

\header {
  title = "Exercise 26"
  subtitle = ""
  composer = "S. Lee"
  tagline = ##t
}

\paper {
  ragged-bottom = ##t
  %  last-bottom-spacing = #10
  markup-system-spacing = #20
  systems-per-page = #5
  system-system-spacing #'minimum-distance = #15
}

db = \downbow
ub = \upbow

global = {
  \time  4/4
  \tempo   4 = 72
\key a \minor
}

celloI = \relative c {
  \global
    a8\downbow\f b c d e d c b a c e a c a e c |
    a8 b c d e d c b a d f a d a f d |
    e8 f e f e c' b a e f e f e c b a |
    e' f e f e d'c b e, f e f e d c b |
    a8 b c d e d c b a c e a c a e c |
    a b c d e d c b a c e a c a e c a1 \bar "|."
  }



celloII = \relative c {
  \global
  a4\f r r2 r4 <c' e,>2-1-2 q4 a,-1 r4 r2 r4 <d' f,>2-2-4 q4 |
  e,,4-3 r4 r8 e'd c e,4 r4 r8 e' d c e,4 r4 r8 b'' a gs-4 |
  e,4-2 r4 r8 b'a-2 gs-1 a4 r4 r2 |
  r4 <c'e,>2-1-2 q4 a,4 r4 r2 r4 <c'e,>2-1-2 q4 a,1 \bar "|."
  }



celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
  midiPanPosition = #LEFT
} { \clef bass \celloI }

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  midiInstrument = "cello"
   midiPanPosition = #RIGHT
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

}

\score {
  \unfoldRepeats
  <<
    \celloIPart
    \celloIIPart
  >>
  \midi { }
}

%{
  convert-ly (GNU LilyPond) 2.19.0  convert-ly: Processing `'...
  Applying conversion: 2.17.97, 2.18.0
%}
