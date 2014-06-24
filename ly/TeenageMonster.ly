\version "2.17.5"
\language "english"

\header {
  title = "I Was A Teenage Monster"
  instrument = "Cello duet"
  composer = "Rick Mooney"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key ef \major
  \time 4/4
  \partial 4
  \tempo 4=126
}

celloI = \relative c {
  \global
 g4-0\upbow\f <c c,>4.-0-1 d8-3 <ef c,>4-0-4 c |
 af8-4 g-3 f4-1 (f8) f g af g4. f8 ef4-2 d c2. g'4-0 |
 <c c,>4.-0-1 d8-3 <ef c,>4-0-4 c
 af8-4 g-3 f4-1 (f8) f g af g4. f8 ef-2 f ef d c2. s4
 \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark "Fine" \bar "|." \break
 s2. g'4-0 <c c,>4-0-1 g4-3 af g8 (f) ef4-2 f g-0 g |
 <c c,>4 g-3 af g8 (f) g2. g4-0 |
 <c c,>4 g-3 af g8 f ef4-2 f g-0 g |
 f4 ef d ef8 (d) c2. 
 \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark "D.C al Fine" \bar "|."
  
}

celloII = \relative c {
  \global
  % Music follows here.
  
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
