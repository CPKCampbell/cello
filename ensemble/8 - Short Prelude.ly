\version "2.17.30"
\language "english"

\header {
  title = "Short Prelude"
  subtitle = "Cello Ensemble"
  tagline = ##f
}

global = {
  \time  4/4
  \tempo  "Adagio"
}

celloI = \relative c {
  \global
  \override Staff.Script.staff-padding = #3
  <<
    { s2 b'4\rest s s1 s2 b4\rest s s1 b,2\rest \stemDown d2*1/2\upbow (b'4)  s2.
    }
    \\
    {
      d,2\rest e2*1/2^\downbow_( \voiceOne c'4)\oneVoice r2 a8\downbow (c b4) 
      r2 e,2*1/2^\downbow_( \voiceOne a4) \oneVoice
      r2 e8^\downbow (g fs4) \stemUp a2.\upbow b4 c1*1/4^\downbow^( \voiceOne \stemDown e,2. )
    }
  >>
  \bar "|."
}

celloII = \relative c {
  \global

  \override Staff.Script.staff-padding = #1
  <<
    { d4\rest s2. f4\rest s2. d4\rest s2. d4\rest s2. f4\rest f2\downbow g4^\upbow s1 }
    \\
    {c,,1*1/4_( g'2.) g1*1/4^\upbow_(d'2.) c,1*1/4_(a'2.) d,1*1/4^\upbow_(a'2.) s2 r4 g 
     d'2\rest \stemUp <g, c,>2^\downbow
    }
  >>
  \bar "|."
}

celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
} { \clef bass  \celloI  }

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
    \override Slur.minimum-length = #5 
    \override BreathingSign #'text = \markup { \musicglyph #"scripts.caesura.straight" }
  \set Score.markFormatter = #format-mark-circle-barnumbers
  #(layout-set-staff-size 20)
  \context {
    \Staff
    \override VerticalAxisGroup #'default-staff-staff-spacing
    #'basic-distance = #12
  }
}
\midi { }
}
