\version "2.17.14"
\language "english"

\header {
  title = "String Builder 2"
  subtitle = "Pgs 7 Whales Song"
  instrument = "cello duet"
  composer = "Rick Mooney"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \major
  \numericTimeSignature
  \time 2/4
}

celloI = \relative c {
  \global
  c,4 c c c 
  c8\f [c'-2 g-4 e-1] c [c'-2 d-4 b-1] c, [c'-2 a'-4 fs-1] g4-2 b,-1 |
  g8-0 [g'-2 d-4 b-1] g-0 [g'-4 fs e] d [c b a] g4.-0 r8 |
  %9
  c,8\downbow [c'-2 g-4 e] c [c'-2 d b] c, [c'-2 a'-4 fs] g4-2 b,-1
  g8-0 [b-1 d-4 c-4] b [a g-0 f-2] e [g-4 f-4 d] c2
  
}

celloII = \relative c' {
  \global
 <c e,>2\mp q4 <b d,> <c e,> <d fs,> <d g,>2
 <b d,>2 q4 <d fs,> <fs fs,>2 <e b>4. r8
  <c e,>2 q4 <b d,> <c e,> <d fs,> <d g,>2
 <e b>2 q4 <d f,> <c e,> <b d,> <c e,>2 
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
 %   \celloIIPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 42 4)
    }
  }
}
