\version "2.17.30"
\language "english"
\header { tagline = ##f}

celloI = \relative c {
  <<
  { s2 r4 s s1 s2 r4 s s1 b2\rest \stemDown d b4\rest s2.
  }
  \\
  {
    d2\rest e2*1/2_( \voiceOne c'4)\oneVoice r2 a8 (c b4) r2 e,2*1/2_( \voiceOne a4) \oneVoice
    r2 e8 (g fs4) \stemUp a2.^(b4) c1*1/4^( \voiceOne e,2. )
  }
  >>
}

celloIPart = \new Staff  {
  
 \clef bass   \celloI  }

\score {
  \celloIPart
  \layout { }
 
}
