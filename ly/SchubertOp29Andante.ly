\version "2.17.1"
\language "english"

\header {
  title = "Andante From String Quartet in A Minor"
  instrument = "Cello Trio"
  composer = "F. Schubert"
  opus = "29"
  tagline = "Engraved with Lilyp[ond"
}

\paper {
  #(set-paper-size "letter" )
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=72
}

celloI = \relative c {
  \global
  \repeat volta 2 {
    e'4_\pp e8-- (e-- ) c4  c  c8 (b) c (d) g,4-4 g-2 |
    e'4 e8-- (e-- ) a,4  a  a8 (d4) cs8 (d4) e8 f |
    e4 e8-- (e-- ) c4  c  c8 (b) c (d) g,4-4 g-2 |
    e'4-4 b8\< b\! c-2 (g'-4) e\> c-2\! c (b) b (a) g4.-2 g8
  }
  \repeat volta 2 {
    f'4-4 f8-- (f--) e4-3 d-1  |
    e-3_\cresc e8-- (e--) d4-1 c-2 |
    b4 d8 (c) b4 a e'1\f\fermata\decr
    ef4-1_\pp\downbow ef8-- (ef-- ) c4-2  c d4 d8-- (d--) b4 b |
    e-1\< b8 b\! c (g'-4)\> e c\!
  }
  \alternative {
    {a4-1_\p b\trill c4. g8-1 }
    {a4_\p b\trill c2 }
  }
}

celloII = \relative c {
  \global
  \repeat volta 2 {
    e8_\pp (g e g) e (g e g) f (g f g) d (f d f) |
    e (g e g) e (g e g) f (a g a) f (a) g d |
    e (g e g) e (g e g) f (g f g) d (f d f) |
    e (g f g) g (e) c g' g4 fs g8 (d) b (d)
  }
  \repeat volta 2 {
    f8 (g f g) f (g f g) e (g e g) e (a e a) |
    b, (e) d (c) b (e-3) e (ds-2) e1-3_\f\fermata\decr |
    a8-1\downbow_\pp (c-4 a c) f,-4 ( a-1 f a) |
    f (af-1 f af) f-2 (g-4 f g) e (g f g) g (e g c,)
  }
  \alternative {
    { g'8_\p ( f e d) e\upbow (g) e\upbow (g) }
    { g'8_\p (f e d) e2 }
  }
}
celloIII = \relative c {
  \global
  \repeat volta 2 {
    c2_\pp (e) d (b) c (cs) d4 (e) f (b,)
    c2 (e) d (b) c4\< (d)\! e2\>
    d2\! (g,)
  }
  \repeat volta 2 {
    d'2 (b) c\cresc ( a ) |
    gs4 (a g ) f e1_\f\>\fermata |
    f'2\downbow\pp ef4. (d16 c) b2 d |
    c,4\< (d)\! e4.\> (d16 e)\!
  }
  \alternative {
    { f4_\p (g) c,2 }
    { f4_\p (g) c,2 }
  }

}

celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  shortInstrumentName = "Cl. I"
  midiInstrument = "cello"
} { \clef bass \celloI }

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  shortInstrumentName = "Cl. II"
  midiInstrument = "cello"
} { \clef bass \celloII }

celloIIIPart = \new Staff \with {
  instrumentName = "Cello III"
  shortInstrumentName = "Cl. III"
  midiInstrument = "cello"
} { \clef bass \celloIII }

\score {
  <<
    \celloIPart
    \celloIIPart
    \celloIIIPart
  >>
  \layout { }
 }
\score {
  \unfoldRepeats
  <<
    \celloIPart
    \celloIIPart
    \celloIIIPart
  >>
  
  \midi { 
   }
}