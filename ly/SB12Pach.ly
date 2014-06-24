\version "2.17.14"
\language "english"

\header {
  title = "String Builder 2"
  subtitle = "Pg 12 Pachyderm Parade"
  instrument = "Cello duet"
  composer = "Rick Mooney"
}

\paper {
  #(set-paper-size "letter")
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats
   <<
     \new Staff = "celloI" \new Voice = "celloI" { s1*0\f \celloI }
     \new Staff = "celloII" \new Voice = "celloII" { s1*0\f \celloII }

     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.8
       \set Score.tempoWholesPerMinute = #(ly:make-moment 104 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     
   >>
 #})

global = {
  \key d \major
  \time 4/4
  \tempo 4=104
}

celloI = \relative c {
  \global
  \partial 4 a4-1\upbow\f d-0 d8 [d] d [e fs e] |
 d4-0 d8-4 [d] d [cs-3 b-1 cs] d4-4 b g-0 b-3 |
 a4 a8 ([b^"x2"]) cs [a b cs] |
 d4-0 d8 d d [e fs e] d4 d8-4 d d [cs b cs] |
 d4 a8-1 (g) a g fs^"x4" e d2. 
  
}

celloII = \relative c {
  \global
 \partial 4 r4 
  d,4 <d'' fs,> a, <cs' e,>  d,4 <d' fs,> a, <cs' e,> |
  r4 <b g>\downbow r4 <b g>\upbow r4 <cs e,>\upbow <a e>\downbow r4 |
  d,,4 <d'' fs,> a, <cs' e,>  d,4 <d' fs,> a, <cs' e,> |
  r4 <cs e,>\downbow r4 <cs e,>\upbow r4 <fs, a,>\upbow <d' fs,>\downbow
  
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
\book {
  \bookOutputSuffix "CelloI"
  \score {
    \rehearsalMidi "celloI" "cello" \celloI
    \midi { }
  }
}

\book {
  \bookOutputSuffix "CelloII"
  \score {
    \rehearsalMidi "celloII" "cello" \celloII
    \midi { }
  }
}