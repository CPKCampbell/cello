\version "2.17.28"
\language "english"

\header {
  title = "Piatti Nr14"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key d \major
  \numericTimeSignature
  \time 4/4
  \tempo 4=84
}


rehearsalMidi = #
(define-music-function
 (parser location  midiInstrument ) ( string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "celloI" \new Voice = "celloI" { s1*0\f \celloI }
     \new Staff = "celloII" \new Voice = "celloII" { s1*0\f \celloII }
     
     \context Staff = $name {
       \set Score.midiInstrument = "cello"
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 84/4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = "cello"
     }
 
   >>
 #})

celloI = \relative c {
  \global
 d2\p e4 fs g2 a4 g fs2 g4 (a)\< b2-1 cs-3 d4\f-4 (d,) cs'-3 (d,) b'-1 (d,) a' (d,) |
 g4-4 (a-0) fs-3 (a) e2-1\> r4 a,-1\upbow\p a'2-0 b4\< (c) b2.-1\> (fs4-3)\!
 g2-4\< a4-0 (bf-1)\! a2.\> (e4-1)\!
 fs4-3\< b a e\! fs b a e d\f f2 (d4) a a b-2 cs-4 d2 e4 fs g2 a4 g |
 fs2-3 a4 (b) c b8 (c) d4 c b-1 cs-3 a-0 b-1 g-4 a fs g\> fs2 (e)\! d\p r2
  
}

celloII = \relative c {
  \global
 r1\p r1 d2 e4 (fs)\< g2 a4 (g) fs2\f a g fs e d cs4\> e a\! g\p fs2 e\< |
 ds4\> b cs (d) e2\< d cs4\> a b (cs) d2\< cs d cs b\f bf |
 a4 fs g e d r4 d'2 b cs d fs4 (g) a2 fs g4 e fs d e cs d b\> a1 d,2\p r2
 
  
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
  \midi { }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "celloI"
  \score {
    \celloI
    \midi { }
  }
}

\book {
  \bookOutputSuffix "celloII"
  \score {
     \celloII
    \midi { }
  }
}

