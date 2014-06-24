\version "2.17.28"
\language "english"

\header {
  title = "Piatti Nr15"
  composer = "R.V. Tabb"
}

\paper {
  #(set-paper-size "letter")
   top-markup-spacing #'minimum-distance = #10
  markup-system-spacing  #'minimum-distance = #15
   system-system-spacing #'basic-distance = #20
  score-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
}

global = {
  \key d \major
  \numericTimeSignature
  \time 6/8
  \tempo 4.=64
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
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 64/4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = "cello"
     }
 
   >>
 #})

celloI = \relative c {
  \global
  fs8\p-3 (g-4 a) a (g fs) fs (g fs) e4. |
  fs8\< (g a ) a (b a) a\> (g fs) e4.\! |
  fs8-3 (e d) cs-4 (b-2 a-1) fs'-2 (e-1 d-0) cs-4 (b-2 a-1) |
  d8 (cs b) a (g fs) e4-2 (d8-2 cs4-1) r8 |
  a'8-1\p (g-0) fs-4 e-2 (fs-4) g b-2 (a) g fs\cresc (g) a |
  cs-4 (b-2) a g (a) b d (cs-4) b-2 a-1 (b) cs |
 e8 (d) cs-4 b-2 (cs) d fs-2 (e) d cs (d) e g-4 (fs-3) e-1 d (e) fs |
a8 (g) fs e (fs) g fs\f (g a) a (g fs) fs (g fs) e4. |
fs8\p (g a ) a (b a) a (g fs) e4. fs8-3\cresc (e d) cs-4 (b-2 a-1) fs'-2 (e-1 d-0) cs-4 (b-2 a-1) |
d (cs-4 b-2) a4-1 (g8-0) fs4-4\f e8-2 d4.-1\fermata
  \bar "|."
}

celloII = \relative c {
  \global
  <a d,>2.~ q4. cs8 (b a) d (e fs) fs (g fs) fs (e d) cs (b a) |
  d,4.\p a' d, a' b cs4 (d8) g4 (fs8) e4 r8 |
  fs,8 (e) d g (a) b g (fs) e a (b) cs a (g) fs b (cs) d |
  b8 (a) g cs (d) e cs (b) a d (e) fs d (cs) b e (fs) g |
  e8 (d) cs fs (g) a fs (e) d cs4 (a8) <a d,>2.\f ( q4.) cs8 (b a) |
  d8 (e fs) fs (g fs) fs (e d) cs (b a) d,4. a' d, a' |
  b8 (cs d) e (fs g) a\f (b) <cs-. g-.> <d fs,>4.\fermata
  
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
  \bookOutputSuffix "-I"
  \score {
    \celloI
    \midi { }
  }
}

\book {
  \bookOutputSuffix "-II"
  \score {
    \celloII
    \midi { }
  }
}

