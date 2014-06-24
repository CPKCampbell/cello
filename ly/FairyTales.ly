\version "2.19.4"
\language "english"

\header {
  title = "Fairy Tales"
  subtitle = "L'Innocence"
  instrument = "Cello and piano"
  composer = "W.H. Squire"
  arranger = "Alvin Buechner"
}

\paper {
  #(set-paper-size "letter")
}
db = \downbow
ub = \upbow
global = {
  \key d \major
  \time 4/4
  \tempo "Allegro con brio" 4=144
}

cello = \relative c {
  \global
  R1 r2 r4 fs8-3-.\f\db g-. a4-. d-. e,-. a-. fs-3 d-. r4 d\ub-. e-. a-. gs-4-. b-. a2. fs8-3-. (g-4-.) |
  a4-. d-. e,-. a-. fs-3-. d-. r b'\ub-. gs-4-. e-. d-. b-3-. a2. e'8\ub-. (fs-3) g4-4 g fs-3 fs g a,8 (b-3) a4 e'8 (fs-3) |
  %13
  g4 g fs-3 fs g2. fs8-3\ub (g) a4-. a-. b-. b-. cs-3-. a2\ub gs8-4\db-. fs-2\ub-. e4-. d-. cs-4-. b-2-. a2\db a'\ub
  d4\db-. d-. cs-3-. cs-. b8-. a-. b-. cs-3-. b4-. a-. fs8-3\db-. g-. a4\db-. e8-. fs-. g4\ub-. d8 (e) fs4-3-. e-. a-- 
  d\db-. d-. cs-3-. cs-.
  b8-. a-. b-. cs-3-. b4-. g8\ub-. fs-3\db-. e4\ub-. a8-. b-. cs-3-. b-. cs-. a-. d4-. d,2.\ub \bar "||"
  \key bf \major
  d4\p\db\< (e8-1 fs-3 g-4 a bf-1 c-2) d4\ub\> (c8-2 bf-1 a g f-2 ef-1\! )
  d4\db (ef8 f-2) d4\ub (ef8-1 f-2) g (f ef f ) d2\ub
   d4\p\db\< (e8-1 fs-3 g-4 a bf-1 c-2) d4\ub\> (c8-2 bf-1 a g f-2 ef-1\! )
  d4\db (ef8 f-2) d4\ub (ef8-1 f-2) d ( ef f ef) d2\ub
  f4-2\pp\db ( g8 a) bf4 ( c8-2 d) c-2 (d c bf) g4 (a8 bf) f4-2\db ( g8 a) ef4 ( f8 g) 
  d8 ( (ef f-2 g) f (g f g ) 
  f4-2 ( g8 a) bf4 ( c8-2 d) c-2 (d c bf) g\< (f g a ) bf4--\p\db bf8\ub (a) g4--\db g8\ub (f-2)
  ef4\db ef8 (d) c4-4 c8\< (bf-2) a4\db (bf8-2 c) d8\!\ub (ef d c)
  bf8-2\db\> (a g a ) bf (d g a )\! bf4--\db bf8\ub (a) g4--\db g8\ub (f) 
  ef4\db ef8 (d) c4 d8 (ef) f-2\< (g) f4\ub f8\db (g) f4\ub
  f8-2\> (ef d c ) bf-2 (a bf c) d4\p\db (e8-1\< fs-3 g a bf-1 c-2 )
  d4\ub\> (c8-2 bf-1 a g f-2 ef\! ) 
  d4\db_"ritard" (e8-1 fs-3) g-4 (a-1\dimTextDim bf-2 c-4) \acciaccatura { a16-1\db\> bf-2 } a2-1 g4-4\ub\! \fermata
  \bar "||" \key d \major fs8-.-3\db\f g-. 
  a4-. d-. e,-. a-. fs-.-3 d-. r d-.\ub e-. a-. gs-.-4 b-. a2. fs8-.-3\ub (g-.-4\ub)
  a4-. d-. e,-. a-. fs-.-3 d-. r b'-.\ub gs-.-4 e-. d-. b-.-3 a2. e'8\ub (fs-3) 
  

  \bar "|."

}

right = \relative c'' {
  \global
  % Music follows here.

}

left = \relative c' {
  \global
  % Music follows here.

}

celloPart = \new Staff \with {
  instrumentName = "Cello"
  midiInstrument = "cello"
} { \clef bass \cello }

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \celloPart
    \pianoPart
  >>
  \layout { }
  \midi { }
}
