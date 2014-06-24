% Created on Tue Sep 20 19:49:20 MDT 2011
\version "2.15.11"

\header {
  title = "Half Position Serenade" 
  composer = "Rick Mooney" 
  instrument = "Cello Duet" 
  tagline = "Engraved with Lilypond" 
  
}

\include "english.ly"


staffCello = \new Staff {
  \time 4/4
  \tempo 4 = 96 
  \set Staff.instrumentName = "Cello"
  \set Staff.midiInstrument = "cello"
  \key a \major
  \clef bass
  \relative c {     
    % Type notes here 
    a'4-0 a,-2 b-4 gs-1 a a e2-4
    a'4 a,b gs a d-0 e2-2
    a4 a, b gs a d,-2 e2-4
    a'4 a, b gs a e' a2
    \bar "|."
  }
  
}
staffCelloII = \new Staff {
  \set Staff.instrumentName = "Cello"
  \set Staff.midiInstrument = "cello"
  \key a \major
  \clef bass
  \relative c {     
    a8 e' cs' e, d' cs b e,
    a, e' cs' e, e'-4 d cs b
    a, e' cs' e, d' cs b e,
    a, e' b' d-2 cs e cs a
    a, e' a cs fs, d' cs b 
    a cs fs-4 d cs-2 b gs e
    a, e' cs' e, d' cs b e, 
    a, e' a e < a, e' cs'>2
        \bar "|."
  }
  
}


\score {
  <<
    \staffCello
    \staffCelloII
  >>
  
  \midi {
  }
  
  \layout {
  }
}

\paper {
}


