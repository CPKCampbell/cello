\version "2.17.17"
\language "english"

\header {
  title = "Bouree"
  instrument = "cello (unaccompanied)"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key g \major
  \time 4/4
  \tempo 4=104
}

cello = \relative c {
  \global
 
  \partial 4 
  \repeat volta 2 {
    d'8\upbow\mp (c) b4-- d--g,-- a8 (b) 
  a4-- c-- d,-- e8 (fs) g (fs g) a b (a b) c 
  \acciaccatura d,8 b'8 (d) c b a4\upbow d8\upbow (c) 
  b4-- d-- g,-- c8 (b) a4-- d-- fs,-- b8 (a) 
  g8-> (fs) e d a4-.\upbow cs'-.\upbow d-- a-. d,-.
  }
  \repeat volta 2 {
  
  a'8-4 (g-2) fs4-.-1^"cresc." a-.-4 d,8 fs-3 a-0 c |
  b4 d,-. g,-- b'8 (a) gs4-. b-. e,8 gs b d |
  cs8\mf (b) cs (b) a4 \breathe g8\p-2 (fs-1) |
  g4-.-2 e'8-4 (cs-1) g4-2-. fs8-3 (e-1) |
  fs4-3-. d'8 (b) fs4-. e8 (d) e4-. cs'-. fs,-. as-. b,2. d'8\f (c) |
  \acciaccatura <d, g,>8 b'4-- d-- g,-- a8 (b) |
  a4-- c-- d,-- e8 (fs) g (fs g) a b (a b ) c |
  \acciaccatura d,8 b' (d) c b a4\upbow d8\upbow (c) |
  \acciaccatura <d, g,>8 b'4-- d-- g,-- g8 (f) |
  \acciaccatura <g, c,>8 e'4-- g-- \acciaccatura <e a,>8 c'4-- b8 (a) |
  \acciaccatura d,8 b'8 (d) b g d4-.\upbow fs-.\upbow }
  \alternative {
    {g4 d-. g,-. }
    { \set Timing.measureLength = #(ly:make-moment 3/4)
      \acciaccatura g8 g'2. }
  }
  
}

\score {
  
  \new Staff \with {
    instrumentName = "Cello"
    midiInstrument = "cello"
  } { \clef bass \cello }
  \layout { }
%  \midi { }
}

\score {
  \unfoldRepeats
  { \cello }
  \midi {  }
}