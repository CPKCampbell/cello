\version "2.15.11"
\language "english"

\header {
  title = "Exercise"
  instrument = "Cello"
  composer = "Paul Hindemith"
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \major
  \numericTimeSignature
  \time 3/8
  \tempo "Lebhaft" 4.=69
}

cello = \relative c {
  \global
  % Music follows here.
  ef8 (af, ef') f-3 (af, f') gf8. (f16 d8) |
  f8 (ef cf'-2) bf4 bf8\upbow (df8-4\< c-3 a-0)
  bf4 bf8\!\mf (cf8 bf a) e-2 (f d) gf-4 (f e)
  b-4\< (as-3 a-2)\! gs-1\upbow (b-4 e-2)
  a\downbow (c-3 b) a4\upbow\> fs8-4~\downbow fs e4-2\! |
  ef8\downbow\p ( af, ef') f (af, f') gf8. ( f16 d8) |
  f (ef\< cf') bf4 bf8\!\mf ( df c a) |
  bf4 ef,8 (gf f d) ef4.\>~ ef~ef~-\parenthesize \upbow ef~ ef4\! bf'8\upbow\mf |
  bf\downbow (c-3 bf) c\upbow (bf c) bf4\downbow f8~\upbow f ef4\downbow |
  bf-3\upbow cf8~-4\downbow cf g\upbow (af) ef'4\downbow bf'8 |
  bf (c bf~ \times 3/4 {bf) df-4\upbow (c-3 cf-2)} |
  bf4\downbow g8-3~\upbow g e\downbow ef\upbow |
  bf\downbow (af cf~\> cf) bff-2\upbow (af)\! ef'4\downbow ef8\upbow\p
  %bar 43
  (d4)\cresc bf'8~\upbow bf4 a8~\downbow a8 r8 ef\upbow (d4) b'8-2~\downbow |
  b4 bf8~\upbow bf r ef,\downbow (d4) c'8-3~\upbow c (b) ef,\downbow (d8) f\upbow df'8-4~\!\f
  df c\upbow df~\downbow df c\upbow cs-4~\upbow |
  cs4.~ cs a (e-2) fs4-4\> (e8) fs4.~\upbow fs4 (e8) fs4.\downbow\! |
  %bar 63
  ef8\p\upbow r8 bf'8\mf\upbow |
  bf (c bf) c (bf c) bf4 f8~\upbow f ef4\downbow |
  bf4-3\< cf8-4~ cf g\upbow (af) df4\downbow\! bf'8\upbow |
  % 71
  \times 3/4 {bf (c-3 a bf)} \times 3/4 { c\upbow (a bf) df~-4\downbow} |
  df8 c\upbow cf\downbow bf4\upbow f8~\downbow f e ef\downbow |
  bf-3\upbow\> (g af cf) bff-2\downbow (af)\! |
  % 78
  ef'4\upbow ef8~\downbow\< ef8 (d) ef\upbow~ ( ef d) ef\upbow \! |
  e4.-2~\f\downbow\< e~\! e8 r8 r8 |
  % 85
  R4.*5
  r8 r b'~-2\mf\downbow b\< (as) b~ b (as) b~ b (as) b\upbow\!
  c4.~-3\f c |
  %96
  a (e) a,~ a b~-4\( b~ b af8\)\p r8 r
  R4.*11
  % 115
  
  ef'8\downbow\p (af, ef') f-3 (af, f') gf8. (f16 d8) |
  f8 (ef cf'-2) bf4 bf8\upbow (df8-4\< c-3 a-0)
  bf4 bf8\!\mf (cf8 bf a) e-2 (f d) gf-4 (f e)
  b-4\< (as-3 a-2)\! gs-1\upbow (b-4 e-2)
  a\downbow (c-3 b) a4\upbow\> fs8-4~\downbow fs e4-2\! |
  ef8\downbow\p ( af, ef') f (af, f') gf8. ( f16 d8) |
  f (ef\< cf') bf4 ef,8\!\p ( af, ef') f (af, f')
}

\score {
  \new Staff \with {
    instrumentName = "Cello"
    midiInstrument = "cello"
  } { \clef bass \cello }
  \layout { }
  \midi { }
}
