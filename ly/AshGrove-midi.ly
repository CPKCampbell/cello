% Lily was here -- automatically converted by /home/colin/lilypond/usr/bin/midi2ly from AshGrove.midi
\version "2.13.53"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = {


  \key c \major
    
  % [SEQUENCE_TRACK_NAME] control track
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] GNU LilyPond 2.13.61          
  
  \time 3/4 
  
  \tempo 4 = 100 
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  % [INSTRUMENT_NAME] cello
  

  \key c \major
  
}

trackBchannelC = \relative c {
  g4 c e 
  | % 2
  g e c 
  | % 3
  c d f 
  | % 4
  d b g 
  | % 5
  g c e 
  | % 6
  c a f 
  | % 7
  a g c 
  | % 8
  b c2 
  | % 9
  g4 c e 
  | % 10
  g e c 
  | % 11
  c d f 
  | % 12
  d b g 
  | % 13
  g c e 
  | % 14
  c a f 
  | % 15
  a g c 
  | % 16
  b c2 
  | % 17
  g4 c e 
  | % 18
  g g f 
  | % 19
  e d f 
  | % 20
  f f e 
  | % 21
  d c e 
  | % 22
  e e d 
  | % 23
  c d g 
  | % 24
  fis g2 
  | % 25
  g,4 c e 
  | % 26
  g e c 
  | % 27
  c d f 
  | % 28
  d b g 
  | % 29
  g c e 
  | % 30
  c a f 
  | % 31
  a g c 
  | % 32
  b c2 
  | % 33
  
}

trackB = <<

  \clef bass
  
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelC
>>


trackCchannelA = {
  
  % [INSTRUMENT_NAME] cello
  

  \key c \major
  
}

trackCchannelC = \relative c {
  r4 c'2 
  | % 2
  g4 c e 
  | % 3
  e, f g 
  | % 4
  f g b 
  | % 5
  g e g 
  | % 6
  e f a 
  | % 7
  f g e 
  | % 8
  g c,2 
  | % 9
  r4 c'2 
  | % 10
  g4 c e 
  | % 11
  e, f g 
  | % 12
  f g b 
  | % 13
  g e g 
  | % 14
  e f a 
  | % 15
  f g e 
  | % 16
  g c,2 
  | % 17
  r4 g'1. g e4 g 
  | % 22
  g g f 
  | % 23
  e d2. g c2 
  | % 26
  g4 c e 
  | % 27
  e, f g 
  | % 28
  f g b 
  | % 29
  g e g 
  | % 30
  e f a 
  | % 31
  f g e 
  | % 32
  g c,2 
  | % 33
  
}

trackC = <<

  \clef bass
  
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelC
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Staff=trackC \trackA
    \context Staff=trackC \trackC
  >>
  \layout {}
  \midi {}
}
