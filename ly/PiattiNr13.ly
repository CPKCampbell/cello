\version "2.17.28"
\language "english"

\header {
  title = "Piatti Nr13"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key d \major
  \numericTimeSignature
  \time 3/4
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
  d4\f  d' cs -3 |
  b 4 -1 g fs  |
  e 4 a g  |
  fs 4 e d  |
  %% 5
  d, 4 d' cs-4  |
  b 4-2 g fs-4  |
  e 4-2 cs'-4 b-2  |
  a 2.-1 \> |
  a 4-1 \p g'-4 fs -3 |
  %% 10
  g 4-4 e-1 cs-4\<  |
  d 4 d' cs\!-3  |
  d 4 -4a\> fs  |
  e 4\! g fs  |
  e 4 fs d  |
  %% 15
  cs 4-4 b-2 a -1\< |
  g' 4-4 fs-3 e -1 |
  d4\f  d' cs -3 |
  b 4-1 g fs  |
  e 4 a g  |
  %% 20
  fs 4 e d  |
  d, 4 d' c -4 |
  b 4-3 g' -4fs -3\< |
  e 4 a cs -3 |
  d 2.\ff-4  |
  \bar "|."
}

celloII = \relative c {
  \global
  d, 2.\f  |
  g 4 e' d  |
  cs 2.  |
  d 4 g fs  |
  %% 5
  d 4 fs a  |
  g 4 e d  |
  cs 4 e gs  |
  a4\>  e cs  |
  a 2.\p  |
  %% 10
  cs 4 e g \< |
  fs 2 e 4\!  |
  fs 2\> d 4  |
  g, 2. \! |
  gs 2.  |
  %% 15
  a 2. \< |
  e 4 d cs  |
  d 2.\f  |
  g 4 e' d  |
  cs 2.  |
  %% 20
  d 4 g fs  |
  d 2 fs 4  |
  g 4 e d \< |
  cs 2 a 4  |
  d 4\ff a d,  |
  \bar "|."
  
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

