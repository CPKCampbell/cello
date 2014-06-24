\version "2.17.30"
\language "english"

\header {
  title = "Woodman‘s Wonders"
  subtitle = "Cello Ensemble"
  instrument = "Cello Two and Three Part"
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=84
}

celloI = \relative c {
  \global
  c4 d e f g c a g c r4 g\upbow r e\downbow r4 r2 |
  f4\downbow g e r e\upbow f d r |
  c4\downbow e g e d e d g c r g\upbow r e r4 r2 |
  f4\downbow d e r c\upbow b c r f\downbow d e  c c b c r
  
}

celloII = \relative c {
  \global
  c4 r g\upbow r e r4 r2 c4\downbow d e f g c a g |
  d'4 b c g c a b g a g e c |
  g'4 c g g c, d e f g c a b a b c a e g e c a' b c a e g c, r4
  
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
  \header {
    piece = \markup {\bold \italic "2 - Taking Turns" }
  }
  \layout { }
  \midi { }
}



celloI = \relative c {
  
  e4 g g r e\upbow g g r e\downbow g g e d d d r |
  r2 e4\downbow g g r e g g r c, g r c,\upbow c_"Fine" r \bar "|."
  d'4\downbow d d e f f f r r d\upbow b g c c, c r |
  e'4\downbow e e f g g g r e\upbow e e fs g g g r |
  e e e fs g g, g' g_"D.C. al fine" 
  
}

celloII = \relative c {
  r2 e4 g g r e g g r e\downbow c g g g r e'\downbow g g r e\upbow g g r |
  e g e d c c c_"Fine" r4 \bar "|."
  R1 d4 d d e f f f r e\upbow e e f g g g r |
  e4\downbow e e d c c a d r b e d r c a d g, r4 r2_"D.C. al fine"  
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
  \header {
    piece = \markup { \bold \italic "3 - A Little Quarrel" }
  }
  \layout { }
  \midi { }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

celloI = \relative c {
  \time  2/2
  \tempo  "Allegretto"
  \repeat volta 2 {
  \partial 2
  c4.\downbow c8 d (b) c4 e4. e8 |
  f8\downbow (d) e4 g4. c8 c\downbow (b a g) g (f) e (f) |
  e4\upbow (d) d4.\downbow f8 |
  f8\downbow (e) d (c) a'4. g8 g\downbow (fs) e (d) g (fs) g (fs) |
  g4\downbow c (b) a a\upbow (g) c4.-2 bf8^"x1" |
  %10
  bf8 (a) a4 g4.-4 f8 f (e) e4 a g\upbow (f) e d c g'2 c,4.\downbow c8\upbow |
  d8 (b) c4 e4. e8 f (d) e4 f8 (e) f ( g16 a) a8 (g f e) e (d c b) b4 (c) 
}
}

celloII = \relative c {
  \time  2/2
  \tempo  "Allegretto"
  \repeat volta 2 {
  \partial 2
  r4 c,4\upbow g'4\downbow c, r4 c\upbow g' c, r4 c'\upbow a2\downbow b4 (c) g (a) b (g) |
  c4 (b) a (cs^"x4") d (c-4) b (c) b e8 (c) d4 d,-1 g2-0 r4 e'4-1\upbow |
  f4 f, r b\upbow c c, f'8-2 (c-4) e (c) d (g,) c (g) b (g) a-1 (d,-1) g (f) e (d) c4 c |
  g'4 c, r c\downbow g'\upbow c,\downbow a'2-1\upbow b4 c f, g c,2
  
}
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
  \header {
    piece = \markup { \bold \italic "5 - Mozart Easy Duet" }
  }
  \layout { }
  \midi { }
}
