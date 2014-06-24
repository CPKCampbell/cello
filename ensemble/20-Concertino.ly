\version "2.17.29"
\language "english"

\header {
  title = "Concertino"
  composer = "C. Dancla"
   tagline = ##f
}

\paper {
  ragged-bottom = ##f
  %  last-bottom-spacing = #10
  markup-system-spacing = #20
  systems-per-page = #5
  system-system-spacing #'minimum-distance = #15
}

bn = { \mark \default }
br = {\breathe r4 }
db = \downbow
ub = \upbow

global = {
  \key c \major
  \time 4/4
  \tempo  4=92
 
}

celloI = \relative c {
  \global
  c4\db (e) d (c'_2) 
  c2 b4\ub\br f4_2\db (a_0) g (f) f2 e4_1\br |
  \bn g4_4 (fs) g (e) d (e_1) c'_2 (d) b (c) a (b_1) g2._4 r4 |

  \bn f1_2\db e2 g, f'1_2 e2 g |
 
  \bn f4\db (e) d_0 (g_4) f (e) d (cs'_3) d (e,_1) f_2 (fs_3) g (fs) g \br |
 
  \bn e2\db_1\p f_2 g4 (fs-3) g\br |
  a,2_1\db b_3 c4 (b) c \br |

  \bn a'4_0\db (cs_3) d_4 (f,_2) |
  <<
    {e4^1 (g^4) f^2 (e^1) }
    \\
    {g,2_0 g_0 }
  >>
  <d'^0 g,_0>2 <f^2 g,_0> <e^1 g,_0>2. r4 |

  \bn d'4_4\f^"Melody" (c) b_1 (g_4) c (g_4) f (e) |
  d (c) b_3 (g) c_4 (g'_4) f_2 (e_1) |

  \bn a4_0\db (g) f_2 (e) d'_4 (cs) d (e,_1)\mp f (e) d\< (c'_2) c2\mf b4 \br |

  \bn c,4\db (e) d (c'_2) c2 b4 \br f4_2\db (a_0) g (f) f2 e4_1\ub \br |
 
  \bn a4_0\db (e_1) f (d) c_4 (e) d (c'_2) b_1 (g_4) a_0 (b) c2. r4 \bar "|."
  
}

celloII = \relative c {
  \global
  e2_1\db\f f_2 g4 (fs_3) g\ub \br |
  a,2_1\db b_3 c4 (b) c\ub \br |
  
  \bn e2_1\db c_4 b a_1 g'_1 fs g4 g,_0^\markup { \finger "+" }^3 g_0^\markup { \finger "+" }^3 r4 |

  \bn d''4_4\f^"Melody" (c) b_1 (g_4) c (g_4) f (e) |
  d (c) b_3 (g) c_4 (g'_4) f_2 (e_1) |
 
  \bn a4_0\db (g) f_2 (e) d'_4 (cs) d (e,_1)\mp f (e) d\< (c'_2) c2\mf b4 \br |

  c,4_4\db (e) d_4 (c'_2) c2 b4_1 \br f4_2\db (a_0) g (f) f2 e4_1 \br |

  \bn a4_0 (e_1) f (d) c_4 (e) d (c'_2) b_1 (g_4) a_0 (b) c2. r4 |
 
  \bn f,1_2\f e2_1 g, f'1_2 e2 g \bn 

  f4\db (e) d_0 (g_4) f (e) d (cs'_3) d (e,_1) f_2 (fs_3) g (fs) g \br |
 
  \bn e2_1\db f_2 g4 (fs_3) g\ub\br a,2_1\db b_3 c4 (b) c\ub \br |
 
  \bn a'4_0\db (cs_3) d (f,_2) 
  <<
    {e4^1 (g^4) f^2 (e^1) }
    \\
    {g,2_0 g_0 }
  >>
  <d'^0 g,_0>2 <f^2 g,_0> <e^1 g,_0>2. r4 \bar "|."
  
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
  \new GrandStaff
  <<
    \celloIPart
    \celloIIPart
  >>
  \layout {
    \override BreathingSign #'text = \markup { \musicglyph #"scripts.caesura.straight" }
  \set Score.markFormatter = #format-mark-circle-barnumbers
  #(layout-set-staff-size 18)
  \context {
    \Staff
    \override VerticalAxisGroup #'default-staff-staff-spacing
    #'basic-distance = #12
  }
}
\midi { }
}


