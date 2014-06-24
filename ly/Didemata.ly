\header {
  filename = "diademata.ly"
  enteredby = "Peter Chubb"
  composer = "Sir George J. Elvey (1816--1893)"
  date = "1868"
  title = "Diademata"
  metre = "6 6. 8 6. D"
  meter = \metre

  mutopiatitle = \title
  mutopiacomposer = \composer
  mutopiainstrument = "Voice (SATB)"
  style = "Hymn"
  source = "Book of Common Praise, 1908, number 367"
  copyright = "Public Domain"
  maintainer = "Peter Chubb"
  maintainerEmail = "mutopia@chubb.wattle.id.au"
  lastupdated = "2005/Jan/09"

  footer = "Mutopia-2005/01/18-524"
  % tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent "  \footer  " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by "  \maintainer  ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"

}
\version "2.19.2"

%{
  Words include `Crown him with many crowns'
%}

sop =  \transpose c c' {
  \voiceOne
  ees4 ees8 ees8 g4 g4 |  c'2.
  c'4 | bes4 ees aes g |  f2.
  f4 | g bes c' bes |  a g8( f)  bes4
  ees'4 | d' ees' c' c' |  bes2.
  bes4 | bes g f ees |  c'2.
  c'4 | c' a g f |  d'2.
  d'4 | ees'4. d'8 c'4 bes |  aes f g
  bes4 | aes g f f | ees1

}

alt =  \transpose c c' {
  \voiceTwo
  bes,4 bes,8 bes,8 ees4 ees4 |  ees2.
  ees4 | ees ees d ees |  d2.
  d4 | ees f ees g |  ees c f
  ees4 | f g c f |  d2.
  d4 | ees ees d ees |  ees2.
  e4 | f f ees ees |  d2.
  f4 | ees ees ees ees |  ees d ees
  ees | ees ees ees d | ees1
}


ten =  {
  \voiceOne
  g4  g8 g8 g4 g4 |  aes2.
  aes4 | bes c' aes bes |  bes2.
  bes4 | bes bes g g  |  c' a bes
  a4 | bes bes bes a |  bes2.
  bes4 | bes bes aes bes |  c'2.
  bes4 | a c' bes c' |  bes2.
  bes4 | bes bes aes bes |  c' bes bes
  bes c' bes bes4. aes8 | g1
}

bass =  {
  \voiceTwo
  ees4 ees8 ees8 c4 c4 |  aes,2.
  aes4 | g aes f ees |  bes,2.
  bes,4 | ees d c ees |  f ees d
  c4 bes, ees f f |  bes,2.
  aes4 | g ees f g |  aes2.
  g4 | f f g a |  bes2.
  aes4 | g g  aes g | f bes ees
  g,4 | aes, ees bes, bes, | ees1
}

one = {
  \time 1/2\skip 4*1 | \time 4/2\skip 4*4 | \time 3/2\skip 4*3
  \bar "||"
}
two =  {
  \time 1/2 \skip 4*1 | \time 4/2 \skip 4*4 | \skip 4*4 |
}
global = {
  \time 4/4
  \key ees \major
  %{	\skip 4*4 |
     \time 3/2 \skip 4*3 \bar "||" |
     \one \break \one  \one \one
     \one \break \one \two
     \bar "|."
  %}
}

% now have only one || request per staff
upperStaff = \context Staff = upper<<
  \global
  \context Voice = "sop" \sop
  \context Voice = "alto" \alt
>>

lowerStaff = \context Staff = lower<<
  \global
  \clef "bass"
  \context Voice = "tenor" \ten
  \context Voice = "bass" \bass
>>

msusfour =  {
  < c es f g >2-\markup{ m \super 4 }
}

chExceptions = #(append
                 (sequential-music-to-chord-exceptions msusfour #t)
                 ignatzekExceptions)


accomp=\chordmode {
  \set chordNameExceptions = #chExceptions
  es4 es c2:m |
  as2.
  as4
  es4 as d:m5- es |
  bes2.

  bes4 |
  es bes  c:m es |
  f:7  f:7/+es  bes a:dim |
  bes4 es  f:sus4 f |
  bes2.


  bes4:7 | es4 es d:dim/+f es |
  as2.

  c4:7 |
  f f es f:7 |
  bes2.
  bes4:7 |
  es4 es8 es:7 as4 es |
  f:m7 bes es

  es4 |
  as es bes:sus bes8 bes8:7 |
  es2*2
}




\score {
  \context ChoirStaff  \transpose c' a	<<
    \context ChordNames {
      \set ChordNames.chordChanges = ##t
      \accomp
    }
    \upperStaff
    \lowerStaff
  >>
  \layout {
    %indent = 0.0 \mm
    %line-width= 140.0\mm
    ragged-right = ##f
    \context {
      \Staff \remove "Time_signature_engraver"
    }
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }


}

\score {
  \context ChoirStaff  \transpose c' b	<<
    \context ChordNames {
      \set ChordNames.chordChanges = ##t
      \accomp
    }
    \upperStaff
    \lowerStaff
  >>
  \layout {
    %indent = 0.0 \mm
    %line-width= 140.0\mm
    ragged-right = ##f
    \context {
      \Staff \remove "Time_signature_engraver"
    }
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }


}
%{
  convert-ly (GNU LilyPond) 2.19.4  convert-ly: Processing `'...
  Applying conversion: 2.5.0, 2.5.1, 2.5.2, 2.5.3, 2.5.12, 2.5.13,
  2.5.17, 2.5.18, 2.5.21, 2.5.25, 2.6.0, 2.7.0, 2.7.1, 2.7.2, 2.7.4,
  2.7.6, 2.7.10, 2.7.11, 2.7.12, 2.7.13, 2.7.14, 2.7.15, 2.7.22, 2.7.24,
  2.7.28, 2.7.29, 2.7.30, 2.7.31, 2.7.32, 2.7.32, 2.7.36, 2.7.40, 2.9.4,
  2.9.6, 2.9.9, 2.9.11, 2.9.13, 2.9.16, 2.9.19, 2.10.0, 2.11.2, 2.11.3,
  2.11.5, 2.11.6, 2.11.10, 2.11.11, 2.11.13, 2.11.15, 2.11.23, 2.11.35,
  2.11.38, 2.11.46, 2.11.48, 2.11.50, 2.11.51, 2.11.52, 2.11.53,
  2.11.55, 2.11.57, 2.11.60, 2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3,
  2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27,
  2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44,
  2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16,
  2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39,
  2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6,
  2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25,
  2.17.27, 2.17.29, 2.17.97, 2.18.0, 2.19.2
%}
