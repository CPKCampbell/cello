\version "2.15.37"
\language "english"

\header {
  title = "Mobile No. 6"
  subtitle = "(mobility from 1st to 4th position, closed setting)"
  instrument = "Cello"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key g \major
  \time 4/4
  \tempo "Andante" 4=72
}

cello = \relative c {
  \global
  % Music follows here.
  b'_p\< e8-1 (fs-3) g4-4\! g fs8 (e) fs4 e b-3 |
  c-4 c8 (b) a4-1 c b8\> (a b2) r4\! |
  % shift indicator?
  %5
  b4-1\downbow\< e8-1 (fs) g4 g fs8 (e\!) fs4 e b-3 |
  c4 c8 (b) a4 d-0-3 b8-3\> (a b4) g2-4\! |
  a4-1\mf a8 (b) c4 a |
 %10
 g4-4 fs8 (g) e4\> b a\!\p a8 (b) c4 a |
  g4 (b) d2-1 d4-1\mf d8 (e-3) f4-4 d |
  c-4 b8 (c) a4 e 
  %15
  f4 f8 (e) d4 f |
  e4\> e a2-3\! a4-3\<\upbow_- ( a\upbow_-) bf2-4\downbow
 a8-3\!\< (g-1 a4) bf2 a4-3\! (g-1) f-4 (e)
%20
d4 (f) a2-3\>
  a4-3\<\upbow_- ( a\upbow_-) bf2-4\downbow
  a8-3\! (g-1 c4-0-3) a2\>
  d4-1\!\< (e-3) f\downbow g-0-3\upbow\!
  e4. (d8\>) c2-4
  %25
  a8\! (f') f e f4 (a,) g8 (e') e d e4 (g,) |
  b8 (g') g fs \crescTextCresc e8 (g b4-3)
  a8-1 (c-4) c e-1 e (g) fs4\f\fermata\!\> \breathe
  b,4\p\downbow\!\< e8-1 (fs) g4 g 
  fs8\! (e) a-0-3 (fs) e4 b-3 
  c4-4 c8 (b) a4-1 d-0-3
  b8-3\> (a b4) e,2-1 fs8\!\< (g) a-1 (b) c (a) e'4-1
  g16-1\! (fs e b-3) c8-4 (a)  b4-3 b e,2.-1 r4 
  
  
}


\score {
  \new Staff \with {
    instrumentName = "Cello"
    shortInstrumentName = "Cello"
    midiInstrument = "cello"
  } { \clef bass \cello }
  \layout { }
  \midi { }
}
