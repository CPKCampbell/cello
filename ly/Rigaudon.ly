\version "2.14.1"
\language "english"

\header {
  title = "Rigaudon"
  composer = "H. Purcell"
  tagline = "Engraved with Lilypond"
}

\paper {
  #(set-paper-size "letter")
}

#(set-global-staff-size 14)
tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold {
    "Allegretto "
    \small \general-align #Y #DOWN \note #"4" #1 = 100
  }
}

bgcolor =
#(define-music-function (parser location color) (string?)
 #{\override Staff.StaffSymbol $'stencil = $(lambda (grob)
    (let* ((staff (ly:staff-symbol::print grob))
           (X-ext (ly:stencil-extent staff X))
           (Y-ext (ly:stencil-extent staff Y)))
         (set! Y-ext (cons
            (- (car Y-ext) 2)
            (+ (cdr Y-ext) 2)))
         (ly:grob-set-property! grob 'layer -10)
         (ly:stencil-add
           (ly:make-stencil (list 'color (eval-string color)
               (ly:stencil-expr (ly:round-filled-box X-ext Y-ext 0))
               X-ext Y-ext))
           staff)))
#})
 
global = {
  \tempoMark
  \key c \major
  \time 4/4
}

celloI = \relative c {
  \global
  \bgcolor "yellow"
   % Music follows here.
  c4\downbow_\mf c b a g2. g4 a a b g c2 c,
  c'4\downbow_\mf c b a g2. g4 a a b g c2.\mark "Fine" r4
  \bar "||"
  e8\downbow_\cresc (f)g4 e8 (f) g4
  f4 e d g,_\! c2_\f d e2. d4_\mf
  e8\downbow_\cresc (f)g4 e8 (f) g4
  f4 e d g, a2\tenuto b\tenuto c c\!
  d8 (e) f4 f e e d c g^\markup{ \dynamic "m" }
  d'8 (e) f4 e d e2 g
  d8 (e) f4 f e e d c e a,2 b c2. r4
    \bar "|."
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark "D.C. al Fine"
}

celloII = \relative c {
  \global
  % Music follows here.
  c,2 d e4 f e c f d g f e (d) c2
  c2 d e4 f e c f d g f e (d) c2
  c4 c' g e a2 b4 f e g c (b) c g e g
  c, e g c a g f e f (e) d2 c' c
  b4 d a c d2 c b4 d a d
  c8 (b) a (g) c4 c
  b4 d a c d,2 c f4 (e) d2 c c
}

celloIII = \relative c {
  \global
  c,2 d e4 f e c f d g f e (d) c2
  c2 d e4 f e c f d g f e (d) c2
  g'4_p g' g, g' g, g' g, g'
  g,4 g' g, g' c, g' c, g'
  g, g' g, g' g, gs a g
  f d g g c g c, r4
  d\f f d e e g c c,
  f d g8 (f) e (d) c4 d c' b
  a c d g, e g c c, f d g8 (f) e (d) c4 e c' r4
}

celloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
  } { \clef bass \celloI }

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  midiInstrument = "cello"
} { \clef bass \celloII }

celloIIIPart = \new Staff \with {
  instrumentName = "Cello III"
  midiInstrument = "cello"
} { \clef bass \celloIII }

\score {
  <<
    \celloIPart
 %  \celloIIPart
    \celloIIIPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
