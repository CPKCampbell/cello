\version "2.19.0"
\language "english"

\header {
  title = "Mobile 15"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key d \major
  \numericTimeSignature
  \time 6/4
  \tempo "Moderato" 4=86
}

cello = \relative c {
  \global
  d'2\mp (cs4) b2 (fs4) g2. fs-3^\glissando fs4-4 (as-1 b-2) cs-4 (b as-1\glissando) b2.-1 fs-3 |
  d'2 (cs4) b2 (fs4) g2. fs-3 fs4-4 (as-1 b-2) cs-4 (b as-1) b2.-2~b2 r4 |
  as2\mf-1\downbow (b4) cs2\upbow (as4) \acciaccatura {b16-2 cs-4} b4 (d,-0 e-1) fs2.-3\upbow |
  e4\downbow (g2) fs4 (d2)\glissando ds4-1 (fs2-4) e4-2 (b2-4) |
  a4-2 (b-4 ds) g,-0 (e'-1 c) a-1 (b-3 b---4) ds-1 (fs ds) e2.-2\>~ e2 r4\! |
  g,2 -0 (a4) b (d,2)\glissando cs-1 (d4-2) e2.-4 |
  cs4-1 (e a) gs-1\glissando (a-1 b-3) a2. d, |
  g2-0 (a4) b (d,2)\glissando cs-1 (d4-2) e2.-4 |
  cs4-1 (e a) b-4 (a-2 fs'-4) d2.-0~ d2 r4 |
  ds2\mf-1 \cresc (e4) fs (d b)\glissando e2-1 (fs4) g (e c) |
  fs2 (g4) a2-0 (c4) b2\f (fs4) b2. |
  \acciaccatura {b16-2 cs-4} b4-2 (as-1\glissando b-1) fs-3 (g fs) e (d c) a (b c) |
  b (a g ) f (c d) e2.\> e c'2\mp (b4) a2 (e4) f2. e\glissando |
  e4-4 (gs a) b (a gs-1\glissando ) a2.-1 e-3 |
  c'2 (b4) a2 (e4) f4\< (a c) f-2 (a-0 c-3) df\f (bf-1 df-4) as-1 ( cs-4 as) |
  fs8-4\downbow as-1 cs2-4\> fs,8\p a\downbow cs2\upbow |
  as8-1\glissando_"ritard." b-1 cs4\downbow (d) d8\upbow (cs) b2\downbow
  \bar "|."
  
  
}

\score {
  \new Staff \with {
    instrumentName = "Cello"
    midiInstrument = "cello"
  } { \clef bass \cello }
  \layout { }
  \midi { }
}
