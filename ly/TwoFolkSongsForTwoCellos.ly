\version "2.15.0"
\language "english"

\header {
  title = "English Folksongs Gone Too Far"
  instrument = "Two Cellos"
  composer = "Anonymous et al."
  arranger = "Colin Campbell"
  copyright = \markup { \char ##x00A9 "2011 Colin
Campbell"}
  tagline = "Engraved with LilyPond"
}

\paper {
  #(set-paper-size "letter")
}
#(set-global-staff-size 23)
global = {
  \tempo 4=76
  \key d \minor
  \time 6/8
}

celloI = \relative c {
  \global
  % Music follows here.
 r4. r4 d8 f4\downbow (g8) a8. (bf16 a8)
 g4 (e8) c8. (d16 e8) f4 (d8) d8. (c16 d8)
 e4 (c8) a4 (d8) f4\downbow (g8) a8. (b16 a8)
 %bar 7
 g4 (e8) c8. (d16 e8) f8. (e16 d8) cs8. (b16 cs8)
 d4. d4 d8\upbow
 f4 (g8) a8. (bf16 a8)
 g4 (e8) c8. (d16 e8) f4 (d8) d8. (c16 d8)
 e4 (c8) a4 (d8) f4 (g8) a8. (b16 a8)
 g4 (e8) c8. (d16 e8) f8. (e16 d8) cs8. (b16 cs8)
 d4. d
 %bar 18 chorus
 c'4. c8. (b16 a8) g4 (e8) c8. (d16 e8)
 f4 (d8) d8. (c16 d8) e4 (c8) a4.
 c'4. c8. (b16 a8) g4 (e8) c8. (d16 e8)
 f8. (e16 d8) cs8. (b16 cs8) d4. d4 d8
 % verse
 \time 4/4
 r4 d g8 g a4      | % 5
 b1~      | % 6
 b4 a g~ g8 e      | % 7
 d1~      | % 8
 d4 d g fs      | % 9
 g1~      | % 10
 g4 a b~ b8 c      | % 11
 a1~      | % 12
 a4 a b~ b8 c      | % 13
 d1~      | % 14
 d4 c8 b a4~ a8 g      | % 15
 b1~      | % 16
 b4 a g~ g8 e      | % 17
 d1~      | % 18
 d4 d e8 g4~ g8      | % 19
 g1~

}
%{celloII = \relative c {
  \global
  % Music follows here.
r2. d,2. c d4. bf'4. a2. d, c
d4. a' d,2.
d2. c d4. bf'4. a2. d, c
d4. a' d,2.
f c d4. bf'4. a2. f c
d4. a' d,2.
d2. c d4. bf'4. a2. d, c
d4. a' d,2.
d2. c d4. bf'4. a2. d, c
d4. a' d,2.
}
%}
celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
} { \clef bass \celloI }
%{
celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  midiInstrument = "cello"
} { \clef bass \celloII }
%}
\score {
  <<
    \celloIPart
    %   \celloIIPart
  >>
  \layout { }
  \midi { }
}
