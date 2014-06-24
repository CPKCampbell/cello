\version "2.19.4"
\language "english"

\header {
  title = "Rondeau"
  instrument = "Cello"
  composer = "G. B. Buonconcini (1670 - 1747)"
  meter = "Allegretto con grazia"
}

\paper {
  #(set-paper-size "letter")
}
#(set-global-staff-size 24)
global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
  \tempo 4=116
}

cello = \relative c {
  \global
  f8\mf-. e-. f4-. c-. g'8-. f-. g4-. c,-. a'-. g8 (f) e-. d-. c2. |
  c'4\upbow\< bf8-. a-. g-. f-. d'-. c-. bf-. a\!-. g-. f-. e-. f-. f4.\trill (e16 f) g2. |
  f8\p-. e-. f4-. c-. g'8-. f-. g4-. c,-. a' g8 (f) e-. d-. c2. |
  c'4\<-. bf8-. a-. g-. f-. d'-. c-. bf-. d-. c4-. f,8\!-. g-. a4-. g-. f2. |
  a4\p-. bf8 (a) g-. f-. g (f g4) c-. f,8 (e f4) d'-. e,2 f4-. |
  g8-. f-. e-. f-. g-. a-. b-. a-. g-. b-. c4-. c,8-. d-. e4-. d-. c2 r4 |
  f8-.\downbow e-. f4-. c-. g'8-. f-. g4-. c,-. a'-. g8 (f) e-. d-. c2. |
  c'4\f-. bf8-. a-. g-. f-. d'-. c-. bf-. d-. c4-. f,8-. g-. a4-. g-. f2.
  f4-.\downbow_\p^"a tempo" g8 (f) e-. d-. e (d e4) a-. d,8 (e d4) bf'-. cs,2. |
  a'4-. g8-. f-. e-. d-. bf'-- a-. g-. f-. e-. d-. cs\< d d4. (e8) e2.\> |
   a4\!-. g8 (f) e-. d-. bf'-. a-. g-. bf-. a4-. d,8-. e-. f4 (e-.) d-. e4.\<\trill (d16 e) |
    f8^"a tempo"\mf e-. f4-. c-. g'8-. f-. g4-. c,-. a'-. g8 (f) e-. d-. c2. |
  c'4-. bf8-. a-. g-. f-. d'-. c-. bf-. a-. g-. f-. e-. f-. f4.\trill-. (e16-. f)-. g2. |
  f8-. e-. f4-. c-. g'8-. f-. g4-. c,-. a'-. g8 (f) e-. d-. c2. |
  c'4-. bf8 (a) g-. f-. d'-. c-. bf-. d-. c4-. f,8-- g-- a4-- g-- f2.\fermata \bar "|." |
}

\score {
  \new Staff \with {
    instrumentName = "Cello"
    midiInstrument = "cello"
  } { \clef bass \cello }
  \layout { }
  \midi { }
}
