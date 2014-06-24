\version "2.17.14"
\language "english"

\header {
  title = "String Builder 2"
  subtitle = "Pg 8 March"
  instrument = "cello duet"
  composer = "Rick Mooney"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key d \major
  \numericTimeSignature
  \time 4/4
}

celloI = \relative c {
  \global
 d4-0\f\downbow d'-4 d,-0 d'-2 cs8-1 ([d-2 e-4 cs]) d2  d4-4 cs b a g fs e d |
 d4 d'-4 d,-0 d'-2 cs8 ([d e cs]) d2 d4-2 fs,-1 a-4 cs,-3 d2-4 d4-0 r4 \mark "fine"
 g,4-0 g'-4 g,-0 g'-2 fs8-1 ([g-2 a-4 fs]) g2 g4-2 a-0 b c b2 a |
 g,4 g'-4 g, g'-2 fs8 ([g a fs]) g2 g4-4 b d d, g2 r2
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \mark "D.C. al Fine"
 
}

celloII = \relative c {
  \global
  <a d,>2 q a'4 a, d8 [d,16 d] d8-.\upbow [d-.\upbow ] d2 fs a a |
  <a d,>2 q a'4 a, d8 [d,16 d] d8-.\upbow [d-.\upbow ]
  <d' g,>4 d <e a,>2 <a d,> <d fs, a, d,>4 r4 |
  g,,8-.\downbow [fs-. e-. d-.] g-. [fs-. e-. d-.]
  d'4 d, g8-. [fs-. e-. d-.] g-. d'-. d,-. d'-. g,-. d'-. d,-. d'-. g,4 d e fs |
  g8-.\downbow [fs-. e-. d-.] g-. [fs-. e-. d-.]
  d'4 d, g8-. [fs-. e-. d-.] g-. d'-. d,-. d'-. g,-. d'-. d,-. d'-. g,4 a b cs 
  
  
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
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 92 4)
    }
  }
}
