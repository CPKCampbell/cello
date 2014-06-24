\version "2.17.14"
\language "english"

\header {
  title = "String Builder 2"
  subtitle = "Pg 12 Invisible Target"
  instrument = "cello duet"
  composer = "Rick Mooney"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key a \major
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

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats
   <<
     \new Staff = "celloI" \new Voice = "celloI" { s1*0\f \celloI }
     \new Staff = "celloII" \new Voice = "celloII" { s1*0\f \celloII }

     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.8
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     
   >>
 #})
celloI = \relative c {
  \global
  a'4-4 (fs-1) gs-3 (a-4) a-0 (b-1) a-0 (e-1) |
  a-0 (fs-1) gs-3 (a-4) a2-0 b-1 |
  a4-0 (fs-1) gs (a-4) a-0 (b-1) a (e) a-0 (fs-1) gs (a-4) a2-4 a'4-0 r4
  
}

celloII = \relative c {
  \global
 \addStacc {
   a8 a' d,, d' e d cs b a a' e d e d cs b |
   a8 a' d,, d' e d cs b a a' e d e d cs b |
   %5
   a8 a' d,, d' e d cs b a a' e d e d cs b |
   a8 a' d,, d' e d cs b a8 a' e a, <cs' e, a,>4 r4
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
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
\book {
  \bookOutputSuffix "CelloI"
  \score {
    \rehearsalMidi "celloI" "cello" \celloI
    \midi { }
  }
}

\book {
  \bookOutputSuffix "CelloII"
  \score {
    \rehearsalMidi "celloII" "cello" \celloII
    \midi { }
  }
}