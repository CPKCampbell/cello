\version "2.19.0"
\language "english"

\header {
  title = "Two Minuets"
  instrument = "Violoncello and Piano"
  composer = "J. S. Bach"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key d \major
  \numericTimeSignature
  \time 3/4
  \tempo "Con grazia" 4=92
}

cello = \relative c {
  \global
  \mark \markup { \bold "Menuett I"}
  \repeat volta 2 {
    fs2.-3\p g4 (fs) e (e8) d-.e-. cs-.-4 fs4-2 |
    d8 (cs-4) b-.-2\< cs-.-4 d-. e-.\! |
    fs8\< (e) g (fs) b (a) a2.~\! a4 g8\> (fs ) e-. fs-. }
  \alternative {
    {d2. <>\! }
    {d2.\> <>\! }
  }
  \repeat volta 2 {
    fs2.\p~ fs4 e (ds-1) e8-1 (g) fs-. e-. ds-1-. fs-4-. a-0 (g-4) fs-. g-. e (fs) |
    g2.\<~ g8 fs-4 (b-2 as-1) d-4-. cs-3-.\! fs,4 e8\dim (d) cs-. d }
  \alternative {
    {b8-2 (as-1 b-2)\! cs-4-. d-0-. e-1-. }
    {b2._\markup { \small \bold \italic "Fine" }}
  }
  \break \mark \markup {\bold "Menuett II"}
  \repeat volta 2 {
    d2\downbow\p a4 b (c) r b\downbow\< (g')\! fs |
    e d8\> (cs) b-. a-.\! d2 a4 b (c) r |
    b4\upbow\< (g')\! fs }
  \alternative {
    { fs4 (e2)\> <>\! }
    { fs4 (e2)\> <>\! }
  }
  \repeat volta 2 {
    a2\downbow e4 fs (g) r |
    as,-2 (fs'-3) e d cs8-. d b4-2 g'2-4\cresc fs4 b (a) r\! d,\upbow\p cs4. (d8) }
  \alternative {
    {d2.\> }
    {d2.\>_\markup {\tiny \italic "Menuett I da capo"} <>\!}
  }
  \bar "|."
}

rhI = \relative c { 
  \global
  \repeat volta 2 {
    d'2.\p d2 cs4~ cs cs2 b2. (d) |
    \clef treble cs8 (b d cs g' fs fs4) e8 (d cs4) }
  \alternative {
    { d2.}
    { d2.}
  }
  \repeat volta 2 {
    a4\p (b c b2) a4 g c b b2 (g4) |
    \clef bass b8 (as) cs (b) d (cs) e (d e2) |
    <d b>4 cs8 b as4 }
  \alternative {
    { b2 r4 }
    { b2._\markup { \small \bold \italic "Fine" }}
  }
  % Menuett II
  \repeat volta 2 {
    fs4\p g a g a2 b4 cs d cs s4 g fs g a |
    g4 a2 b4. (cs!8 d4 }
  \alternative {
    { d4 cs8\> b a4\!) }
    {d4 (cs2\>) <>\! }
  }
  \repeat volta 2 {
    cs4 d e d cs b as s4 cs b as b |
    d2\cresc d4 d cs d a2\p a4 }
  \alternative {
    {a4 g8\> a fs4\!}
    {a2.\> <>\!_\markup {\tiny \italic "Menuett I da capo"}}
  }
  \bar "|."
}

rhII = \relative c {
  \global
  \repeat volta 2 {
    s2. s2 s4 s b'4 (as) d, fs b s2. |
    \clef treble a2. a4 b\> cs }
  \alternative {
    { a2.\! }
    { a2.\! }
  }
  \repeat volta 2 {
    s4 s s r8 a8 (g4) fs e fs4. (a8) g2 (e4) |
    \clef bass e4 s s s8 s cs'2 fs,4 g\dim e8 fs }
  \alternative {
    {d2\! r4 }
    { d2.\! }
  }
  % Menuett II
  \repeat volta 2 {
    d4\p e fs g2 ( fs4) g2\< a4\! a e~\> e\! d e fs g2 (fs4) g2\< a4\! }
  \alternative {
    {a2 a4 }
    {a2.\> <>\! }
  }
  \repeat volta 2 {
    s4 s a4 a e2 as4 fs~ fs <fs d> e8 fs d4 |
    s2 c'4 b a a a2 g4 }
  \alternative {
    { fs4 e d }
    {fs2. }
  }
  \bar "|."
}

lh = \relative c {
  \global
  \repeat volta 2 {
    b8 (fs' b) a g fs e d e fs g e fs4 fs, fs' b, d fs b a g~ g fs cs d g a8 a, }
  \alternative {
    { d8 (cs) fs-. e-. d-. cs-. }
    {d4 a fs}
  }
  \repeat volta 2 {
    d8\p (a' d) c b a g fs g a b fs c'4 a b e, e' d |
    cs4 d b as fs as b e, fs }
  \alternative {
    {b, b' cs }
    { << {b,2. } \\ {d'4\rest  fs, (b)_\markup { \small \bold \italic "Fine" }}>>}
  }
  % Menuett II
  \repeat volta 2 {
    d,2.\p d' fs4\< e\! d a2.\> d,\! d' fs4\< e <fs d>\! }
  \alternative {
    {fs4 e8\> d cs4\! }
    { fs4 e\> ( g)\! }
  }
  \repeat volta 2 {
    <<
      { e2 e4 d2 d4 e d8 (cs b as) b4 fs b, fs''\rest cs d d e fs fs\p e2 }
      \\
      {a,4 b cs s2 s4 cs as fs s4 s s b2 a4 g2 fs4 a2. }
    >>
  }
  \alternative {
    { << {d'4 a\> d, <>\!} \\ {d,2 d4} >> }
    { <d' d,>2._\markup {\tiny \italic "Menuett I da capo"}}
  }
  \bar "|."
}

\score {
  \new GrandStaff <<
    \new Staff \with {
      %     instrumentName = "Cello"
      midiInstrument = "cello"
      midiPanPosition = #-1
    } { \clef bass \cello }
    \new PianoStaff \with { 
      midiInstrument = "acoustic grand"
      midiPanPosition = #1
    }
    <<
      \new Staff  { \clef bass << \rhI \\ \rhII >>}
      \new Staff { \clef bass \lh }
    >>
  >>
  \layout { }
 
}

\score {
 
  \new GrandStaff <<
    \new Staff \with {
      %     instrumentName = "Cello"
      midiInstrument = "cello"
      midiPanPosition = #-1
     midiMinimumVolume = #0.8
       midiMaximumVolume = #1.0
     
    } \unfoldRepeats {  \clef bass \cello }
    \new PianoStaff \with { 
      midiInstrument = "acoustic grand"
      midiPanPosition = #1
       midiMinimumVolume = #0.5
       midiMaximumVolume = #0.7
    }
    <<
      \new Staff  \unfoldRepeats { \clef bass << \rhI \\ \rhII >>}
      \new Staff \unfoldRepeats { \clef bass \lh }
    >>
  >>
 
  \midi { }
}