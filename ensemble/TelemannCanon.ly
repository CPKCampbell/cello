\version "2.19.2"
\language "english"

\header {
  title = "Canon"
  composer = "Telemann"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \numericTimeSignature
  \time 2/4
  \tempo "Allegro" 4=64
}

celloI = \relative c {
  \global
  c8 f4 e8
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT  \mark "Canon "
  a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f c4 r |
  c'8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f |
  c4\downbow c'\downbow ~ c8 bf16 (a) bf8 a16 (g) a8 g16-4 (f-2) g8-4 f16-2 (e-1) f8-4 a-1 bf-2 c-4 f,4 r |
  %21
  f16 (g) a8 a16 (g) f8 c' c c f e16 (f) g8 a16 (g) f8 g c, c d e16 (f) e8 e f-2 g16-2 (a-4) g8-2 g-2 a-4 |
  b,4-2-1\trill c d8-0 g,-0 e'-1 g,-0 f'4 g8 f16 (e) |
  %30
  a8 a, g'4 f8 e16 (d) e8 c-2 b4-2-1\trill c-2 d8-0 g-0 e-1 c |
  g4 g'\downbow~ g8 f16 (e) f8 e16 (d) e8 d16-4 (c-2) d8-4 c16-2 (b-1) c8-2 e,-1 f-2 g-0 c,4-0 r4 |
  %39
  c'8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f c4 r |
  c'8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f |
  c4\downbow c'\downbow ~ c8 bf16 (a) bf8 a16 (g) a8 g16-4 (f-2) g8-4 f16-2 (e-1) f8-4 a-1 bf-2 c-4 f,4 r
  %59
  f'8\downbow f16 (e) f8 g-8 a4-4 d, cs8 a-1 f'-2 d a'4 d, cs8 a f'4 |
  e4\trill a,8 b16 (a)  gs8 e-3 c'4-4 b a8 b16(a) |
  gs8 e c'4 b a8 b16 (c) d8 c16 (b) c8 d16 (e) f4 e d8 a'-4 (af-3 g-2) fs-3 (f-2 e-1) a, d4-0 c-4 |
  %74
  b8 a16-2 (gs-1) a8 e' e,-3 e' e, e' e d16 (c) d8 c16 (b) c8-4 b16-4 (a) b8 a16-2 (gs-1) a8 c, d-1 e-3 a4 r8 g\upbow |
  f8 g16 (a) bf d c bf |
  c8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f c4 r |
  c'8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f |
  c4\downbow c'\downbow ~ c8 bf16 (a) bf8 a16 (g) a8 g16-4 (f-2) g8-4 f16-2 (e-1) f8-4 a-1 bf-2 c-4 f,4\fermata r
}

celloII = \relative c {
  \global
  r2 c8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f c4 r |
  c'8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f |
  c4\downbow c'\downbow ~ c8 bf16 (a) bf8 a16 (g) a8 g16-4 (f-2) g8-4 f16-2 (e-1) f8-4 a-1 bf-2 c-4 f,4 r |
  %21
  f16 (g) a8 a16 (g) f8 c' c c f e16 (f) g8 a16 (g) f8 g c, c d e16 (f) e8 e f-2 g16-2 (a-4) g8-2 g-2 a-4 |
  b,4-2-1\trill c d8-0 g,-0 e'-1 g,-0 f'4 g8 f16 (e) |
  %30
  a8 a, g'4 f8 e16 (d) e8 c-2 b4-2-1\trill c-2 d8-0 g-0 e-1 c |
  g4 g'\downbow~ g8 f16 (e) f8 e16 (d) e8 d16-4 (c-2) d8-4 c16-2 (b-1) c8-2 e,-1 f-2 g-0 c,4-0 r4 |
  %39
  c'8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f c4 r |
  c'8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f |
  c4\downbow c'\downbow ~ c8 bf16 (a) bf8 a16 (g) a8 g16-4 (f-2) g8-4 f16-2 (e-1) f8-4 a-1 bf-2 c-4 f,4 r
  %59
  f'8\downbow f16 (e) f8 g-8 a4-4 d, cs8 a-1 f'-2 d a'4 d, cs8 a f'4 |
  e4\trill a,8 b16 (a)  gs8 e-3 c'4-4 b a8 b16(a) |
  gs8 e c'4 b a8 b16 (c) d8 c16 (b) c8 d16 (e) f4 e d8 a'-4 (af-3 g-2) fs-3 (f-2 e-1) a, d4-0 c-4 |
  %74
  b8 a16-2 (gs-1) a8 e' e,-3 e' e, e' e d16 (c) d8 c16 (b) c8-4 b16-4 (a) b8 a16-2 (gs-1) a8 c, d-1 e-3 a4 r8 g\upbow |
  f8 g16 (a) bf d c bf |
  c8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f c4 r |
  c'8 f4 e8 a,8 d4 c8 f, bf4\upbow a8\upbow d4 c bf8 a16 (g) a8 f-2 e4\trill-2-1 f-2 g8-0 c a f |
  c4\downbow c'\downbow ~ c8 bf16 (a) bf8 a16 (g) a8 g16-4 (f-2) g8-4 f16-2 (e-1) f8\fermata r8 r4

}

celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
  midiPanPosition = #LEFT
} { \clef bass \celloI }

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  midiInstrument = "bright acoustic"
  midiPanPosition = #RIGHT
} { \clef bass \celloII }

\score {
  <<
    \celloIPart
    %  \celloIIPart
  >>
  \layout { }
  %  \midi { }
}

\score {
  <<
    \celloIPart
    \celloIIPart
  >>
  %  \layout { }
  \midi { }
}