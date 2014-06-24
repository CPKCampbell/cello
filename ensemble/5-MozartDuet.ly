\version "2.18.0"
\language "english"

\header {
  title = "12 Easy Duets"
  subtitle = "Nr. 5"
  composer = "W. A.Mozart"
  tagline = ##f
}

\paper {
  ragged-bottom = ##t
  %  last-bottom-spacing = #10
  markup-system-spacing = #20
  systems-per-page = #5
  system-system-spacing #'minimum-distance = #15
}

db = \downbow
ub = \upbow

global = {
  \time  2/2
  \tempo  "Allegretto" 4 = 92

}

celloI = \relative c {
  \repeat volta 2 {
    \partial 2 c4.\db c8 d (b) c4 e4. e8 f\db (d) e4 g4. c8 |
    c8\db (b a g) g (f) e (f) e4\db (d) d4.\db f8\ub |
    f8\db (e) d (c) a'4. g8 g\db (fs) e (d) g (fs) g (fs) |
    g4\db c (b) a a\ub (g) c4.-2 bf8^"x1" |
    bf8\db (a) a4 g4.^4 f8 f (e) e4 a g\ub (f) e d c |
    g'2 c,4.\db c8\ub d (b) c4 e4. e8 f (d) e4 f8 (e) f (g16 a) |
    a8 (g f e ) e (d c b ) b4 (c) r2^\markup {  "to Cello II" }
  }

}

celloII = \relative c {
  \global
  \repeat volta 2 {
    \partial 2 r4 c,\ub g'\db c, r c\ub g' c, r c'\ub |
    a2\db b4 (c) g (a) b (g) |
    c (b) a (cs^"x4") d (c^4) b (c) |
    b e8 (c) d4 d,-1 g2-0 r4 e'^1\db |
    f4 f, r b\ub c c, f'8-2 (c-4) e (c) d (g,) c (g) b (g) a-1 (d,-1) |
    g (f) e (d) c4 c g' c, r4 c\db g'\ub c,\db a'2-1 |
    b4 c f, g c,2 r^\markup {  "to Cello I" }

  }

}

celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
  midiPanPosition = #LEFT
} { \clef bass \celloI }

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  midiInstrument = "cello"
  midiPanPosition = #RIGHT
} { \clef bass \celloII }

\score {

  \new GrandStaff
  <<
    \celloIPart
    \celloIIPart
  >>

  \layout {
    \override BreathingSign #'text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-circle-barnumbers
    #(layout-set-staff-size 20)
    \context {
      \Staff
      \override VerticalAxisGroup #'default-staff-staff-spacing
      #'basic-distance = #12
    }
  }

}

\score {
  \unfoldRepeats
  <<
    \celloIPart
    \celloIIPart
  >>
  \midi { }
}

%{
  convert-ly (GNU LilyPond) 2.19.0  convert-ly: Processing `'...
  Applying conversion: 2.17.97, 2.18.0
%}
