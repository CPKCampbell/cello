\version "2.13.54"
\language "english"

\header {
  title = "Polonaise"
  subtitle = "(Unaccompanied)"
  instrument = "Cello"
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
    "Allegro ma pesante "
    \small \general-align #Y #DOWN \note #"4" #1 = 100
  }
}

global = {
  \tempoMark
  \key c \major
  \time 3/4
}

celloI = \relative c {
  \global
  \repeat volta 2 {
  a'8\downbow b c4 b a e\upbow e\upbow
  a8\downbow b c4 b a e\upbow e\upbow
  c'8 b a4 c b e,\upbow e\upbow a d,\upbow d\upbow
}
  \alternative {
    { e4 a,\upbow a\upbow }
    { e2^> r4 }
  }


}

celloII = \relative c {
  \global
  % Music follows here.

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
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
