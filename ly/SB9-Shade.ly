\version "2.17.14"
\language "english"

\header {
  title = "String Builder 2"
  subtitle = "Pg 9 Sitting in the Shade"
  instrument = "cello duet"
  composer = "Rick Mooney"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key d \major
  \numericTimeSignature
  \time 4/4
}
%%% addStacc ..........................................
#(define (make-script x)
   (make-music 'ArticulationEvent
               'articulation-type x))

#(define (add-script m x)
   (case (ly:music-property m 'name)
     ((NoteEvent) (set! (ly:music-property m 'articulations)
                      (append (ly:music-property m 'articulations)
                         (list (make-script x))))
                   m)
     ((EventChord)(set! (ly:music-property m 'elements)
                      (append (ly:music-property m 'elements)
                         (list (make-script x))))
                   m)
     (else #f)))

#(define (add-staccato m)
         (add-script m "staccato"))

addStacc = #(define-music-function (parser location music)
                 (ly:music?)
           (map-some-music add-staccato music))
           
celloI = \relative c {
  \global
 d4-0\mp (d'-2) cs8-1 ([ d-2 e-4 cs]) d-2 ([ fs,-1 g-2 a-4)] fs4-1 (d-4) |
 d8-0 ([e-1 fs-3 d]) a'-0 ([ b-1 cs-3 a]) d-2 ([cs-1 d e-4]) d4-2 (d,-0) |
 %5
 d4-0 (d'-2) cs8 ([d e cs]) d ([fs,-1 g a]) fs4 (d-4) |
 d8-0 ([ e-1 fs d]) a' ([b cs a]) d-2 ([cs d e]) d4-2 (d,-0) |
 %9
 g8-2 ([fs-1 g a-4]) g4 (g,-0) d'8 ([e-1 fs-3 d]) g4-4 (g,-0) |
 g'8-2 ([fs g a]) g4-2 (g,-0) b-1 (cs-3) d2-4 |
 %13
 d4-0 (d'-2) cs8 ([d e cs]) d ([fs,g a]) fs4 (d-4) |
 d8-0 ([ e-1 fs d]) a' ([b cs a]) d-2 ([cs d e]) d4 (d,-0)
  
}

celloII = \relative c {
  \global
  \addStacc {
    d,8 [g fs' d] a4 <a' e a,> d,,4 <d' a d,>  d,8 [g fs' d]
    d,4 <d' a d,> a <a' e a,> d,,4 <d' a d,> d,8 a' fs'4 |
    %5
    d,8 [g fs' d] a4 <a' e a,> d,,4 <d' a d,>  d,8 [g fs' d]
    d,4 <d' a d,> a <a' e a,> d,,4 <d' a d,> d,8 a' fs'4 |
    %9
    g,4 <b'd, g,> g,8 [d' b'd,] d,4 <d' a d,> g,8 [d' b'd,] |
     g,4 <b'd, g,> g,8 [d' b'd,] e,4 <a' e a,> d,,8 a' <fs' a, d,>4 |
     %13
     d,8 [g fs' d] a4 <a' e a,> d,,4 <d' a d,>  d,8 [g fs' d]
    d,4 <d' a d,> a <a' e a,> d,,4 <d' a d,> d,8 a' <d' fs, a, d,>4 |
  }
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
      tempoWholesPerMinute = #(ly:make-moment 96 4)
    }
  }
}
