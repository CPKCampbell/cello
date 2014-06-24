\version "2.13.54"
\language "english"

\header {
  dedication = "To my inspiring teacher, Joseph C. Derdeyn"
  title = "Mobile No. 1"
  subtitle = "First and Second finger mobility; a half-step"
  instrument = "Cello"
  composer = "Karl A. Forssmark"
  copyright = "1974 by Henri Elkan - Philadelphia"
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold {
    "Andantino "
    \small \general-align #Y #DOWN \note #"4" #1 = 76
  }
}

global = {
  \tempoMark
  \key c \major
  \time 4/4
}

cello = \relative c {
  \global
  % Music follows here.
  e8_\mp (g, e' f) e (g, d'4)
  d8 (g, f' e) d (e d g,)
  e' (g,\< e' f) e (c' b a)\!
  b (c b f) b (c e, c') b_\> (c) c\upbow b a2\!
  e8_\< (f) f e d4\upbow (g,)\!
  a8 (bf) d, bf' g4 (c,)
  d8 (ef d ef) c (bf'a bf)
  d,_\> (ef) ef d c2\!
  g'4 (a) bf8 (a) a g
  a (bf a bf) g4 (d')
  d4 (e)_\< f8 (e) e d\!
  e8_\mf (c'e, c') b4 (d,)
  e8_\p (c'e, c') b4 (d,)
  g,8_\mf (e'c' e,)  g,8 (e'c' e,)
  f8_\p (e f a,) f' (e f a,)
  e' (d e g,) e' (f e bf)
  d (e f_\cresc e) d (b' c b)
  f8 (b c b) d, (b' c e,)
  g,8_\f (f' b f ) g, (f' b f )
  g, (e' c' e,) g, (e' c' e,)
  f (a, c, a') f' (a, c, a')
  g ( e' c' b) a (e f d)
  g,_\> ( d' a' b ) c2\!
}

\score {
  \new Staff \with {
    instrumentName = "Cello"
    midiInstrument = "cello"
  } { \clef bass \cello }
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 54 4)
    }
  }
}
