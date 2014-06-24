% Created on Thu Jun 16 20:19:32 MDT 2011
\version "2.14.1"

\header {
	title = "March In G" 
 	composer = "J. S. Bach" 
 arranger = "Transcribed by Charles Krane" 
 meter = "Allegro moderato" 
 	instrument = "Violoncello and Piano" 
 	copyright = "Copyright, 1951 by G. Schirmer, Inc." 
 tagline = "Engraved with Lilypoind" 

}

\include "english.ly"


staffCello = \new Staff {
    \time 2/2
    \tempo 2 = 88 
    \set Staff.instrumentName = "Cello"
    \set Staff.midiInstrument = "cello"
    \key g \major
    \clef bass
    \relative c {     
 b'2\downbow_\mf_"L.H." a g4 fs8 e d4 e8 fs
 g4 a8 b c4--^\upbow~ c4--^\upbow b a r2
 c2\downbow a\> d,4\!\downbow d8_\p e\< fs4\upbow fs8 g
 a4\!\downbow b8 c\! d4--\upbow~ d--\upbow

    \bar "|."
    }

}
staffPiano = \new PianoStaff {
	\set PianoStaff.midiInstrument = #"acoustic grand"
	\set PianoStaff.instrumentName = #"Piano"
					\tempo 2 = 88 
			<<
		\context Staff = "RH" {  % Right hand 
			\clef treble
			\key g \major
			\relative c' {
			}
		}
		\context Staff = "LH" {  % Left hand 			
			\clef bass
			\key g \major
			\relative c {
			}
		}
	>>
}



\score {
	<<
		\staffCello
		\staffPiano
	>>
	
	\midi {
	}

  \layout {
  }
}

\paper {
}


