
\version "2.19.6"
% automatically converted by musicxml2ly from /sandbox/music/Cello/IMSLP312341-PMLP504280-RV_407_Sources/RV 407.xml

%% additional definitions required by the score:
\language "english"


\header {
  encodingsoftware = "MuseScore 1.3"
  encodingdate = "2014-01-18"
}

#(set-global-staff-size 14)
\paper {
  %{
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  %}
  top-margin = 1.0\cm
  bottom-margin = 2.0\cm
  left-margin = 1.0\cm
  right-margin = 1.0\cm
}
\layout {
  \context {
    \Score
    skipBars = ##t
    autoBeaming = ##f
  }
}
PartPOneVoiceOne =  \relative a {
  \clef "bass" \key f \major \numericTimeSignature\time 4/4 | % 1
  a1 ^"Allegro" ~ | % 2
  a1 ~ | % 3
  a2 e ~   | % 4
  e1 ~ | % 5
  e1 ~ | % 6
  e2 a | % 7
  a,1 ~   | % 8
  a2 ~ a8 [ b cs b ] | % 9
  d8 [ d a cs ] d [ d a cs ] | \barNumberCheck #10
  d8 [ e f d ] g,4 a | % 11
  d8 [ e f d ] d, [ d' a cs ]   | % 12
  d8 [ d a cs ] d [ e f d ] | % 13
  g,4 a d16 [ \clef "tenor" d' cs d ] a [ d cs d ] | % 14
  a16 [ e' d e ] a, [ e' d e ] a, [ f' e f ] a,
  [ f'16 e f ] | % 15
  a,16 [ g' f g ] a, [ g' f g ] a, [ a' g a ] a,
  [ a'16 g a ]   | % 16
  a,4 r \clef "bass" a16 [ d c ? d ] a [ d c d ] | % 17
  bf16 [ g f g ] d [ g f g ] e [ c' bf c ] g [
  c16 bf c ] | % 18
  a16 [ f e f ] c [ f e f ] d [ bf' a bf ] f [
  bf16 a bf ]   | % 19
  g16 [ e d e ] b [ e d e ] cs [ a' g a ] e [
  a16 g a ] | \barNumberCheck #20
  f8 [ d ] r \clef "tenor" d' ( c ? ) [ bf a g ] | % 21
  g4 ( \trill f8 ) [ f' ( ] e ) [ d c bf ] | % 22
  bf4 ( \trill a8 ) [ f' ( ] e ) [ d c bf ] | % 23
  a8 ( [ c ) f ( d ) ] e4. f8 | % 24
  f4 r \clef "bass" f,8 [ g a g ]   | % 25
  f8 [ g a g ] f [ g a f ] | % 26
  c8 [ d e d ] c [ d e d ] | % 27
  c8 [ d e d ] c [ d e d ] | % 28
  c8 [ d e c ] f [ g a f ]   | % 29
  e8 [ c' c c ] a [ a g g ] | \barNumberCheck #30
  f8 [ f f f ] g [ g g g ] | % 31
  g8 [ g g g ] a [ a a a ] | % 32
  a,8 [ a a a ] d [ d d d ]   | % 33
  cs8 [ cs b a ] d [ d d d ] | % 34
  d8 [ d' d d ] c ? [ c c bf16 a ] | % 35
  g8 [ g g f ] e [ d c b ] | % 36
  a16 [ b c d ] e8 [ e, ] a' [ e a, a' ] | % 37
  a8 [ b16 c ] b8 [ a ] b [ e, gs, b' ]   | % 38
  b8 [ c16 d ] c8 [ b ] c [ e, a, c' ] | % 39
  c8 [ d16 e ] d8 [ c ] b [ gs ] e4 \clef "tenor" |
  \barNumberCheck #40
  e'8 [ e16 ( f ) ] g ( [ f ) g ( e ) ] f8 [ \clef "bass" a,
  d,8 \clef "tenor" f' ] | % 41
  d8 [ d16 ( e ) ] f ( [ e ) f ( d ) ] e8 [ \clef "bass" g,
  c,8 \clef "tenor" e' ] | % 42
  c8 [ c16 ( d ) ] e ( [ d ) e ( c ) ] d8 [ \clef "bass" d,
  b8 d' ]   | % 43
  b8 [ b16 ( c ) ] d ( [ c ) d ( b ) ] c8 [ e, a, c' ] | % 44
  b8 [ e, gs, b' ] c [ e, a, c' ] | % 45
  d8 [ f, a, d' ] e [ d16 c b8 a ] | % 46
  e'8 [ d16 c b8 a ] b4 gs | % 47
  a,8 [ b c b ] a [ b c b ]   | % 48
  a8 [ b c b ] a [ b c a ] | % 49
  e'8 [ fs gs fs ] e [ fs gs fs ] | \barNumberCheck #50
  e8 [ fs gs fs ] e [ fs gs e ] | % 51
  a,8 [ b c a ] e' [ e e e ]   | % 52
  e8 [ e e e ] a,4 r8 d | % 53
  d8 [ d d d ] d [ d d d ] | % 54
  g,4 r8 c c [ c c c ] | % 55
  c8 [ c c c ] f,4 r8 d' | % 56
  c8 [ c c c ] c [ c c c ]   | % 57
  bf4 fs'8 [ d ] g [ c, d d, ] \clef "tenor" | % 58
  g'16 [ d g bf ] g [ d g bf ] a [ d, a' c ] a
  [ d,16 a' c ] | % 59
  bf16 [ d, bf' d ] bf [ d, bf' d ] a [ d, a' d
  ] a16 [ d, a' d ] | \barNumberCheck #60
  bf16 [ d, bf' d ] bf [ d, bf' d ] a8 [ d, ] r d'
    | % 61
  ef8 [ g16 ( f ) ] ef ( [ d ) c ( bf ) ] a8 ( [ f ) a c
  ] | % 62
  d8 [ f16 ( ef ) ] d ( [ c ) bf ( a ) ] g8 ( [ ef ) g bf
  ] | % 63
  c8 [ ef16 ( d ) ] c ( [ bf ) a ( g ) ] fs8 ( [ d ) fs a
  ] | % 64
  bf16 ( [ bf ) c d ] c8 [ bf ] c16 ( [ c ) d ef ] d8 [ c
  ] | % 65
  d16 ( [ d ) e f ] e8 [ d ] e16 ( [ e ) fs g ] fs8 [ e
  ]   | % 66
  fs16 ( [ d ) fs ( d ) ] g ( [ f ) ef ( d ) ] ef [ c
  ef16 c ] f [ ef d c ] | % 67
  d16 [ bf d bf ] ef [ d c bf ] c [ a c a ] d
  [ c16 bf a ] | % 68
  bf16 [ g bf g ] c [ bf a g ] fs [ d fs d ] g
  [ d16 g d ] | % 69
  a'16 [ d, a' d, ] bf' [ d, bf' d, ] c' [ d, c'
  d,16 ] bf' [ d, bf' d, ]   | \barNumberCheck #70
  a'16 [ d, a' d, ] bf' [ d, bf' d, ] c' [ d, c'
  d,16 ] bf' [ d, bf' d, ] | % 71
  a'8 [ d, ] r fs' g [ f16 ef d8 c ] | % 72
  bf8 [ g' d, fs' ] g4 r \clef "bass" | % 73
  g,,8 [ a bf a ] g [ a bf g ]   | % 74
  a8 [ b cs b ] a [ b cs b ] | % 75
  a8 [ b cs b ] a [ b cs a ] | % 76
  d8 [ e f e ] d [ e f e ] | % 77
  d8 [ e f e ] d [ e f d ] \clef "tenor"   | % 78
  \clef "tenor" a'16 [ e a e ] a [ e a e ] f [ d f
  d16 ] f [ d f d ] | % 79
  bf'16 [ f bf f ] bf [ f bf f ] g [ e g e ] g
  [ e16 g e ] | \barNumberCheck #80
  c'16 [ g c g ] c [ g c g ] a [ f a f ] a [ f
  a16 f ] | % 81
  d'16 [ a d a ] d [ a d a ] b [ g b g ] b [ g
  b16 g ]   | % 82
  b16 [ cs d e ] b [ cs d e ] cs8 [ a ] r e' | % 83
  f8 [ e ] r16 e [ f g ] f8 [ e ] r16 e [ f g ] | % 84
  f8 [ e ] r f g16 [ f g e ] f [ e f d ] | % 85
  cs16 [ b ? cs a ] f' [ e f d ] cs4. \trill d8
    | % 86
  d4 r8 \clef "bass" d, a2 ~   | % 87
  a1 ~ | % 88
  a8 [ b cs a ] d [ d a cs ] | % 89
  d8 [ d a cs ] d [ e f d ] | \barNumberCheck #90
  g,4 a d8 [ e f d ]   | % 91
  d,8 [ d' a cs ] d [ d a cs ] | % 92
  d8 [ e f d ] g,4 a | % 93
  d1 \bar "||"
    | % 94
  \key bf \major \time 3/4 | % 94
  R2.*5 \clef "tenor" | % 99
  d'4 ^"Largo e siempre piano" bf g | \barNumberCheck #100
  ef'8 ( [ c ) ] a [ a16 ( bf ) ] c ( [ bf ) c ( a ) ]
    | % 101
  d8 ( [ bf ) ] g [ g16 ( a ) ] bf ( [ a ) bf ( g ) ]
    | % 102
  c16 ( [ d ) ef c ] a ( [ bf ) c a ] fs ( [ a ) bf
  c16 ] | % 103
  bf8 [ a16 g ] ef'8 [ c ] fs, [ g16 a ] | % 104
  bf16 ( [ g ) fs g ] bf ( [ d ) c bf ] ef ( [ c ) d
  ( bf16 ) ] | % 105
  a16 ( [ c ) bf a ] d ( [ c ) bf a ] d ( [ bf ) c
  ( a16 ) ]   | % 106
  g16 ( [ bf ) a g ] ef'8 [ f16 g ] ef8 [ d ] | % 107
  cs8 [ bf16 a ] e'8 [ d16 cs ] g'8 [ f16 e ] | % 108
  f16 [ d ( ef ) f ] ef [ cs ( d ) ef ] d [ b ( cs
  ) d16 ] | % 109
  a16 [ cs b a ] cs [ e d cs ] e [ g f e ] |
  \barNumberCheck #110
  f8 [ e16 d ] cs4. \trill d8 | % 111
  d4 r8 d [ f d ]   | % 112
  e16 [ f e8 ] a8. [ g16 ] f ( [ e ) d ( cs ) ]   | % 113
  d8 [ e16 d ] g8. [ f16 ( ] e ) [ d ( cs ) b ( ] | % 114
  cs8 ) [ b16 a ] bf8 [ e ] g [ bf, ] | % 115
  bf4 a r8 c | % 116
  d16 [ bf a bf ] e4 ~ e16 [ c ( bf ) c ] | % 117
  f4 ~ f8 [ e16 f ] g ( [ f ) e ( d ) ]   | % 118
  c8 [ e16 f ] g,4. f8 | % 119
  f4 r8 f [ a c ]   | \barNumberCheck #120
  ef8 [ d16 c ] fs8 [ ef16 d ] a'8 [ a, ] | % 121
  bf4. a8 g4 | % 122
  ef'16 [ bf ( a ) bf ] ef [ bf ( a ) bf ] ef ( [ c
  ) d16 ( bf ) ] | % 123
  a16 [ c ( bf ) a ] d [ a ( g ) a ] d ( [ bf ) c
  ( a16 ) ] | % 124
  g16 [ bf ( a ) g ] c [ g ( fs ) g ] c [ a bf g
  ]   | % 125
  fs8 [ d ( fs ) a c d ] | % 126
  bf8 [ a16 g ] fs4. g8 | % 127
  cs4 ~ cs16 [ a ( cs ) e ] cs [ a cs e ] | % 128
  d16. [ c ?32 bf16 a32 g ] fs4. \trill g8 | % 129
  g2. | \barNumberCheck #130
  R2.   | % 131
  R2.*2   | % 133
  R2.*2 \clef "bass" \bar "||"
    \repeat volta 2 {
    | % 135
    \clef "bass" \key f \major \time 12/8 | % 135
    d4 ^"Allegro" r8 g,4 r8 d'4 r8 g,4 r8 | % 136
    d'4 r8 g,4 r8 d'4 f8 g4 g8 | % 137
    a4 r8 a,4 r8 d'4 r8 d4 r8 | % 138
    d4 r8 d4 r8 d4 r8 d4 r8   | % 139
    c4 r8 c4 r8 c4 r8 c4 r8 | \barNumberCheck #140
    bf4 r8 bf4 r8 bf4 r8 bf4 r8 | % 141
    a4 r8 a4 r8 a4 r8 a4 r8 | % 142
    d,4 r8 d4 r8 a'4 r8 a4 r8 | % 143
    a,4 r8 a4 r8 \clef "tenor" d' ( [ a ) g ] f [ e d ]
      | % 144
    a'8 ( [ b ) cs ] d ( [ e ) f ] e ( [ d ) e ] a,4.
      | % 145
    d8 ( [ f ) e ] d ( [ e ) f ] g, ( [ bf ) a ] g ( [ a )
    bf8 ] | % 146
    c8 ( [ e ) d ] c ( [ d ) e ] f, ( [ a ) g ] f ( [ g )
    a8 ] | % 147
    bf8 ( [ d ) c ] bf ( [ c ) d ] e, ( [ g ) f ] e ( [ f
    ) g8 ] | % 148
    a8 ( [ c ) bf ] a ( [ g ) f ] bf ( [ d ) c ] bf ( [ a
    ) g8 ]   | % 149
    c8 ( [ e ) d ] c ( [ bf ) a ] d ( [ f ) e ] d ( [ c )
    bf8 ]   | \barNumberCheck #150
    e8 ( [ g ) f ] e ( [ d ) c ] f4. ~ f8 [ g ( e ) ] | % 151
    f4. ~ f8 [ g ( e ) ] f ( [ e ) d ] c [ d b ] | % 152
    c4. ~ c8 [ d ( b ) ] c4. ~ c8 [ d ( b ) ] | % 153
    c8 ( [ bf ? ) a ] g ( [ a ) f ] e4. ~ e4 f8 | % 154
    f8 ( [ a ) c ] f, ( [ a ) c ] f, ( [ a ) c ] f, ( [ a
    ) c8 ] \clef "bass"   | % 155
    f,8 [ c' a ] f [ c a ] f2.
  }
  \repeat volta 2 {
    | % 156
    f'4 r8 c4 r8 f4 r8 c4 r8 | % 157
    f4 r8 c4 r8 f4 r8 c4 r8 | % 158
    f4 r8 c4 r8 f4 r8 c4 r8 | % 159
    f4 g8 a4 bf8 c4 r8 c,4 r8 \clef "tenor"   |
    \barNumberCheck #160
    c'8 ( [ a ) c ] a ( [ f ) a ] c4 r8 ef4 r8   | % 161
    d8 [ bf d ] bf [ g bf ] d4 r8 f4 r8 | % 162
    e ?8 [ c e ] c [ a c ] e4 r8 g4 r8 | % 163
    f8 ( [ e ) f ] ef ( [ d ) ef ] d ( [ cs ) d ] c ( [ b
    ) c8 ]   | % 164
    bf8 ( [ a ) bf ] af [ g af ] g [ fs g ] c [ d ef ? ]
      | % 165
    d,8 ( [ d' ) cs ] d ( [ cs ) d ] d, [ c' b ] c ( [ b )
    c8 ] | % 166
    d,8 ( [ bf' ) a ] bf ( [ a ) bf ] d, ( [ a' ) g ] a [ g
    a8 ] | % 167
    d,8 ( [ d' ) c ] bf ( [ a ) g ] fs4. ~ fs4 g8   | % 168
    g4 r8 \clef "bass" fs4 r8 g4 r8 fs4 r8 | % 169
    g4 r8 g4 r8 c,4 r8 g4 r8 | \barNumberCheck #170
    c4 r8 g4 r8 c4 r8 c4 r8 | % 171
    cs4 r8 cs4 r8 d4 r8 cs4 r8   | % 172
    d4 r8 cs4 r8 d [ d' c ? ] d [ a c ]   | % 173
    bf8 [ g f ? ] g [ d f ] e [ c' bf ] c [ g bf ] | % 174
    a8 [ \clef "tenor" d c ] d [ a c ] b [ e d ] e [ b d
    ] | % 175
    cs8 [ bf ? a ] f' [ e d ] cs [ bf a ] f' [ e d ]
      | % 176
    cs8 [ b a ] bf [ a bf ] g [ fs g ] cs [ b cs ]
      | % 177
    g8 [ fs g ] e' [ d e ] fs, [ a d ] fs, [ a d ] | % 178
    f, ?8 [ a d ] f, [ a d ] e, [ a d ] e, [ a d ] | % 179
    e,8 [ a d ] e, [ a d ] e, [ a cs ] e, [ a cs ] |
    \barNumberCheck #180
    e,8 [ a cs ] e, [ a cs ] d4 r8 \clef "bass" d4 r8
      | % 181
    d4 r8 d4 r8 d4 r8 d4 r8 | % 182
    c4 r8 c4 r8 c4 r8 c4 r8 | % 183
    bf4 r8 bf4 r8 bf4 r8 bf4 r8 | % 184
    a4 r8 a4 r8 a4 r8 a4 r8   | % 185
    d,4 r8 d4 r8 a'4 r8 a4 r8 | % 186
    a,4 r8 a4 r8 d2. ^\fermata
  }
}

PartPOneVoiceTwo =  \relative d {
  \clef "bass" \key f \major \numericTimeSignature\time 4/4 | % 1
  d8 ^"Allegro" [ e f e ] d [ e f e ] | % 2
  d8 [ e f e ] d [ e f e ] | % 3
  d8 [ f e d ] a [ b cs b ]   | % 4
  a8 [ b cs b ] a [ b cs b ] | % 5
  a8 [ b cs b ] a [ b cs b ] | % 6
  a8 [ cs b a ] d [ e f d ] s1   s1*4   s16*25
  \clef "tenor" s16*39   s2 \clef "bass" s2*5   s8*11 \clef
  "tenor" s8*33 \clef "bass" s2   s1*4   s  
  s1*5   s1*2 \clef "tenor" s8*5 \clef "bass" s4 \clef
  "tenor" s2. \clef "bass" s4 \clef "tenor" s16*11 \clef "bass" s16*7
    s1*5   s1*4   s1*5   s1 \clef "tenor" s1*3
    s1*5   s1*4   s1*3 \clef "bass" s1   s1*4
  \clef "tenor"   | % 78
  \clef "tenor" s1*4   s   s4. \clef "bass" s8*5
    s1*4   s1*3 \bar "||"
    | % 94
  \key bf \major \time 3/4 | % 94
  s4*15 ^"Largo e siempre piano" \clef "tenor" s1.   s2.
    s1*3   s2*9   s2.   s4*15
    s1.   s4*15   s2*9   s1.
    s1. \clef "bass" \bar "||"
    \repeat volta 2 {
    | % 135
    \clef "bass" \key f \major \time 12/8 | % 135
    s1*6 ^"Allegro"   s4*27 \clef "tenor" s2.  
    s1.   s1*6   s1.   s2*15 \clef "bass"
      s1.
  }
  \repeat volta 2 {
    s1*6 \clef "tenor"   s1.   s2*9   s1.
      s2*9   s4. \clef "bass" s8*45   s1.
      s8*13 \clef "tenor" s8*23   s1.  
    s8*45 \clef "bass" s4.   s1*6   s1*3
  }
}

PartPTwoVoiceOne =  \relative d' {
  \clef "treble" \key f \major \numericTimeSignature\time 4/4 d16 [ f
  a16 d ] d, [ f a d ] d,8 [ d d d ] | % 2
  d16 [ f a d ] d, [ f a d ] d,8 [ d d d ] | % 3
  d16 [ f a d ] d, [ f a d ] cs8 [ a a a ]   | % 4
  a16 [ cs e a ] a, [ cs e a ] a,8 [ a a a ] | % 5
  a16 [ cs e a ] a, [ cs e a ] a,8 [ a a a ] | % 6
  a16 [ cs e a ] a, [ cs e a ] f8 [ d ] r f | % 7
  e8 a4 ( g8 ) a, g'4 ( f8 )   | % 8
  a,8 f'4 ( e8 ) a,4 r8 cs | % 9
  d16 [ f a d, ] cs [ e a e ] d [ f a d, ] cs
  [ e16 a e ] | \barNumberCheck #10
  d16 [ e f g ] a8 [ d, ] e4 cs | % 11
  d4 r d,16 [ f a d, ] cs [ e a e ]   | % 12
  d16 [ f a d, ] cs [ e a e ] d [ e f g ] a8 [
  d,8 ] | % 13
  e4 cs d r | % 14
  R1*2   | % 16
  a'16 [ cs e a ] a, [ cs e a ] f4 r | % 17
  R1*2   | % 19
  R1*5 | % 24
  f,16 [ a c f ] f, [ a c f ] f,8 [ f f f ]
    | % 25
  f16 [ a c f ] f, [ a c f ] f,8 [ f f f ] | % 26
  e16 [ g c e ] e, [ g c e ] e,8 [ e e e ] | % 27
  e16 [ g c e ] e, [ g c e ] e,8 [ e e e ] | % 28
  e16 [ g c e ] e, [ g c e ] a,8 [ f ] r4   | % 29
  c'16 [ c e e ] g [ g e e ] cs [ cs e e ] a [
  a16 cs, cs ] | \barNumberCheck #30
  d16 [ d f f ] a [ a f f ] ef [ ef g g ] bf [
  bf16 ef, ef ] | % 31
  d16 [ d g g ] bf [ bf d, d ] cs [ cs e e ] a
  [ a16 cs, cs ] | % 32
  g16 [ g c c ] e [ e g, g ] f [ e d e ] f [ g
  a16 bf ]   | % 33
  a8 [ b16 cs d8 e ] f16 [ e d cs ] d [ e f g ] | % 34
  a8 bf4 gs8 a fs4 g8 | % 35
  ef8 cs4 d8 gs a4 b8 | % 36
  c, ?8 [ a' b, gs' ] a4 r | % 37
  R1   | % 38
  R1*5   | % 43
  R1*4 | % 47
  a,16 [ c e a ] a, [ c e a ] a,8 [ a a a ]   | % 48
  a16 [ c e a ] a, [ c e a ] a,8 [ a a a ] | % 49
  b16 [ e gs b ? ] b, [ e gs b ] b,8 [ b b b ] |
  \barNumberCheck #50
  b16 [ e gs b ? ] b, [ e gs b ] b,8 [ b b b ] | % 51
  c4 r8 e gs a4 b8   | % 52
  d,8 gs4 b8 cs,16 [ a cs e ] a8 [ d, ] | % 53
  fs8 g ?4 a8 c, ? fs4 a8 | % 54
  bf,16 [ g bf d ] g8 [ c, ] e f4 g8 | % 55
  bf,8 e4 g8 a,16 [ f a c ] f8 [ d ] | % 56
  ef8 d4 c8 fs e4 d8   | % 57
  g8 [ f ?16 ef ] d8 [ c ] bf4 a | % 58
  g4 r r2 | % 59
  R1*2   | % 61
  R1*5   | % 66
  R1*4   | \barNumberCheck #70
  R1*2 | % 72
  r2 g16 [ bf d g ] g, [ bf d g ] | % 73
  g,8 [ g g g ] g16 [ bf d g ] g, [ bf d g ]   | % 74
  cs,8 [ cs cs cs ] e,16 [ a cs e ] e, [ a cs e ] | % 75
  a,8 [ a a a ] e16 [ a cs e ] e, [ a cs e ] | % 76
  f8 [ d d d ] d,16 [ f a d ] d, [ f a d ] | % 77
  d,8 [ d d d ] d16 [ f a d ] d, [ f a d ]  
  | % 78
  cs8 [ a ] r4 r2 | % 79
  R1*3   | % 82
  R1*4   | % 86
  r4 r8 f' e a4 ( g8 )   | % 87
  a,8 g'4 ( f8 ) a, f'4 ( e8 ) | % 88
  a,4 r8 cs d16 [ f a d, ] cs [ e a e ] | % 89
  d16 [ f a d, ] cs [ e a e ] d [ e f g ] a8 [
  d,8 ] | \barNumberCheck #90
  e4 cs d r   | % 91
  d,16 [ f a d, ] cs [ e a e ] d [ f a d, ] cs
  [ e16 a e ] | % 92
  d16 [ e f g ] a8 [ d, ] e4 cs | % 93
  d1 \bar "||"
    | % 94
  \key bf \major \time 3/4 g8 [ g g g g g ] | % 95
  fs8 [ fs f f f f ] | % 96
  e8 [ e ef ef ef ef ] | % 97
  d8 [ d d d d d ] | % 98
  g,8 [ g c c d d ] | % 99
  g,8 [ g' g g g g ] | \barNumberCheck #100
  fs8 [ fs f f f f ]   | % 101
  e8 [ e ef ef ef ef ]   | % 102
  d8 [ d d d d d ] | % 103
  g,8 [ g c c d d ] | % 104
  g,8 [ g' g g g g ] | % 105
  fs8 [ fs f f f f ]   | % 106
  e8 [ e ef ef ef ef ] | % 107
  a,8 [ a a a a a ] | % 108
  d8 [ d g g g g ] | % 109
  a8 [ a, a a a a ] | \barNumberCheck #110
  d8 [ g, a a a a ] | % 111
  d8 [ d d d d d ]   | % 112
  cs8 [ cs c c c c ]   | % 113
  b8 [ b bf bf bf bf ] | % 114
  a8 [ a' g g e e ] | % 115
  f8 [ f f f f f ] | % 116
  bf,8 [ bf bf bf bf bf ] | % 117
  a8 [ a a a bf bf ]   | % 118
  c8 [ c c c c c ] | % 119
  f8 [ f f f f f ]   | \barNumberCheck #120
  fs8 [ fs fs fs fs fs ] | % 121
  g8 [ g g g g g ] | % 122
  g8 [ g g g g g ] | % 123
  fs8 [ fs f f f f ] | % 124
  e8 [ e ef ef ef ef ]   | % 125
  d8 [ d d d d d ] | % 126
  g,8 [ c d d d d ] | % 127
  a'8 [ a a a g g ] | % 128
  fs8 [ g d d d d ] | % 129
  g,8 [ g' g g g g ] | \barNumberCheck #130
  fs8 [ fs f f f f ]   | % 131
  e8 [ e ef ef ef ef ] | % 132
  d8 [ d d d d d ]   | % 133
  g,8 [ c d d d d ] | % 134
  g,2. ^\fermata \bar "||"
    \repeat volta 2 {
    | % 135
    \key f \major \time 12/8 a''8 [ f a ] bf [ g bf ] a [ f a
    ] bf8 [ g bf ] | % 136
    a8 [ f a ] bf [ g bf ] a [ g f ] e [ f d ] | % 137
    cs8 [ b cs ] a4. a'8 [ f a ] a [ f a ] | % 138
    f8 [ d f ] bf4 r8 bf [ f bf ] bf [ f bf ]   | % 139
    g8 [ e g ] bf4 r8 a [ e a ] a [ e a ] | \barNumberCheck
    #140
    f8 [ d f ] a4 r8 g [ d g ] g [ d g ] | % 141
    cs,8 [ a e' ] g4 r8 cs, [ a e' ] g4 r8 | % 142
    f8 [ d f ] f [ d f ] e [ d e ] e [ d e ] | % 143
    e8 [ cs e ] e [ cs e ] d4 r8 r4 r8   | % 144
    R1.   | % 145
    R1.*4   | % 149
    R1.   | \barNumberCheck #150
    R1.*5   | % 155
    R1.
  }
  \repeat volta 2 {
    | % 156
    f8 [ c f ] e [ c e ] f [ c f ] e [ c e ] | % 157
    f4 r8 g4 r8 a [ f a ] g [ e g ] | % 158
    a8 [ f a ] g [ e g ] a4 r8 bf4 r8 | % 159
    c8 [ bf a ] g [ a f ] f4. e   | \barNumberCheck
    #160
    R1.   | % 161
    R1.*3   | % 164
    R1.   | % 165
    R1.*3   | % 168
    d8 [ bf d ] ef [ c ef ] d [ bf d ] ef [ c ef ] | % 169
    d8 [ b d ] f [ d f ] ef [ c ef ] f [ d f ] |
    \barNumberCheck #170
    ef8 [ c ef ] f [ d f ] ef [ c ef ] g [ ef g ] | % 171
    e8 [ cs e ] g [ e g ] f [ d f ] g [ e g ]  
    | % 172
    f8 [ d f ] g [ e g ] f4 r8 r4 r8   | % 173
    R1.*3   | % 176
    R1.   | % 177
    R1.*3 | \barNumberCheck #180
    r2. a8 [ f a ] a [ f a ]   | % 181
    f8 [ d f ] bf4 r8 bf [ f bf ] bf [ f bf ] | % 182
    g8 [ e g ] bf4 r8 a [ e a ] a [ e a ] | % 183
    f8 [ d f ] a4 r8 g [ d g ] g [ d g ] | % 184
    cs,8 [ a e' ] g4 r8 cs, [ a e' ] g4 r8   | % 185
    f8 [ d f ] f [ d f ] e [ d e ] e [ d e ] | % 186
    e8 [ cs e ] e [ cs e ] d2. ^\fermata
  }
}

PartPThreeVoiceOne =  \relative d' {
  \clef "treble" \key f \major \numericTimeSignature\time 4/4 d8 [ d
  d8 d ] d16 [ f a d ] d, [ f a d ] | % 2
  d,8 [ d d d ] d16 [ f a d ] d, [ f a d ] | % 3
  d,8 [ d d d ] a'16 [ cs e a ] a, [ cs e a ]  
  | % 4
  a,8 [ a a a ] a16 [ cs e a ] a, [ cs e a ] | % 5
  a,8 [ a a a ] a16 [ cs e a ] a, [ cs e a ] | % 6
  a,8 [ a cs cs ] a16 [ d f a ] a, [ d f a ] | % 7
  a,8 f'4 ( e8 ) a, e'4 ( d8 )   | % 8
  a8 d4 ( cs8 ) a16 [ cs e a ] a, [ cs e a ] | % 9
  f8 [ f16 g ] a8 [ e ] f [ f16 g ] a8 [ e ] | \barNumberCheck
  #10
  f4 r8 f, g4 e | % 11
  d16 [ f a d ] d, [ f a d ] f,8 [ f16 g ] a8 [ e ]
    | % 12
  f8 [ f16 g ] a8 [ e ] f4 r8 f | % 13
  e4 cs d r | % 14
  R1*2   | % 16
  e16 [ a cs e ] d, [ a' cs e ] d4 r | % 17
  R1*2   | % 19
  R1*5 | % 24
  r2 f,16 [ a c f ] f, [ a c f ]   | % 25
  f,8 [ f f f ] f16 [ a c f ] f, [ a c f ] | % 26
  g,8 [ e e e ] e16 [ g c e ] e, [ g c e ] | % 27
  e,8 [ e e e ] e16 [ g c e ] e, [ g c e ] | % 28
  e,8 [ e e e ] f16 [ a c f ] f, [ a c f ]   | % 29
  e8 [ c e g ] r cs, [ e a ] | \barNumberCheck #30
  r8 d, [ f a ] r ef [ g bf ] | % 31
  r8 d, [ g bf ] r cs, [ e a ] | % 32
  r8 g, [ cs e ] f,16 [ e d e ] f [ g a bf ]   | % 33
  a8 [ b16 cs d8 e ] f16 [ e d cs ] d [ e f g ] | % 34
  a8 bf4 gs8 a fs4 g8 | % 35
  ef8 cs4 d8 gs a4 b8 | % 36
  c, ?8 [ a' b, gs' ] a4 r | % 37
  R1   | % 38
  R1*5   | % 43
  R1*4 | % 47
  r2 a,16 [ c e a ] a, [ c e a ]   | % 48
  a,8 [ a a a ] a16 [ c e a ] a, [ c e a ] | % 49
  gs8 [ b, b b ] b16 [ e gs b ? ] b, [ e gs b ] |
  \barNumberCheck #50
  b,8 [ b b b ] b16 [ e gs b ? ] b, [ e gs b ] | % 51
  a4 r8 e gs a4 b8   | % 52
  d,8 gs4 b8 cs,16 [ a cs e ] a8 [ d, ] | % 53
  fs8 g ?4 a8 c, ? fs4 a8 | % 54
  bf,16 [ g bf d ] g8 [ c, ] e f4 g8 | % 55
  bf,8 e4 g8 a,16 [ f a c ] f8 [ d ] | % 56
  ef8 d4 c8 fs e4 d8   | % 57
  g8 [ f ?16 ef ] d8 [ c ] bf4 a | % 58
  g4 r r2 | % 59
  R1*2   | % 61
  R1*5   | % 66
  R1*4   | \barNumberCheck #70
  R1*3 | % 73
  g16 [ bf d g ] g, [ bf d g ] g,8 [ g g g ]   | % 74
  e16 [ a cs e ] e, [ a cs e ] a,8 [ a a a ] | % 75
  e16 [ a cs e ] e, [ a cs e ] a,8 [ a a a ] | % 76
  a16 [ d f a ] a, [ d f a ] d,,8 [ d d d ] | % 77
  d16 [ f a d ] d, [ f a d ] d,8 [ d d d ]  
  | % 78
  e4 r r2 | % 79
  R1*3   | % 82
  R1*4   | % 86
  r4 r8 a a f'4 ( e8 )   | % 87
  a,8 e'4 ( d8 ) a d4 ( cs8 ) | % 88
  a16 [ cs e a ] a, [ cs e a ] f8 [ f16 g ] a8 [ e ]
  | % 89
  f8 [ f16 g ] a8 [ e ] f4 r8 f, | \barNumberCheck #90
  g4 e d16 [ f a d ] d, [ f a d ]   | % 91
  f,8 [ f16 g ] a8 [ e ] f [ f16 g ] a8 [ e ] | % 92
  f4 r8 f e4 cs | % 93
  d1 \bar "||"
    | % 94
  \key bf \major \time 3/4 g8 [ g g g g g ] | % 95
  fs8 [ fs f f f f ] | % 96
  e8 [ e ef ef ef ef ] | % 97
  d8 [ d d d d d ] | % 98
  g,8 [ g c c d d ] | % 99
  g,8 [ g' g g g g ] | \barNumberCheck #100
  fs8 [ fs f f f f ]   | % 101
  e8 [ e ef ef ef ef ]   | % 102
  d8 [ d d d d d ] | % 103
  g,8 [ g c c d d ] | % 104
  g,8 [ g' g g g g ] | % 105
  fs8 [ fs f f f f ]   | % 106
  e8 [ e ef ef ef ef ] | % 107
  a,8 [ a a a a a ] | % 108
  d8 [ d g g g g ] | % 109
  a8 [ a, a a a a ] | \barNumberCheck #110
  d8 [ g, a a a a ] | % 111
  d8 [ d d d d d ]   | % 112
  cs8 [ cs c c c c ]   | % 113
  b8 [ b bf bf bf bf ] | % 114
  a8 [ a' g g e e ] | % 115
  f8 [ f f f f f ] | % 116
  bf,8 [ bf bf bf bf bf ] | % 117
  a8 [ a a a bf bf ]   | % 118
  c8 [ c c c c c ] | % 119
  f8 [ f f f f f ]   | \barNumberCheck #120
  fs8 [ fs fs fs fs fs ] | % 121
  g8 [ g g g g g ] | % 122
  g8 [ g g g g g ] | % 123
  fs8 [ fs f f f f ] | % 124
  e8 [ e ef ef ef ef ]   | % 125
  d8 [ d d d d d ] | % 126
  g,8 [ c d d d d ] | % 127
  a'8 [ a a a g g ] | % 128
  fs8 [ g d d d d ] | % 129
  g,8 [ g' g g g g ] | \barNumberCheck #130
  fs8 [ fs f f f f ]   | % 131
  e8 [ e ef ef ef ef ] | % 132
  d8 [ d d d d d ]   | % 133
  g,8 [ c d d d d ] | % 134
  g,2. ^\fermata \bar "||"
    \repeat volta 2 {
    | % 135
    \key f \major \time 12/8 f''8 [ d f ] g4 r8 f [ d f ] g4 r8
    | % 136
    f8 [ d f ] g4 r8 f [ e d ] g [ a f ] | % 137
    e8 [ d e ] cs4. f8 [ d f ] f [ d f ] | % 138
    bf4 r8 f [ d f ] f [ d f ] f [ d f ]   | % 139
    bf4 r8 g [ e g ] e [ c e ] e [ c e ] | \barNumberCheck
    #140
    a4 r8 f [ d f ] d [ bf d ] d [ bf d ] | % 141
    g4 r8 cs, [ a e' ] g4 r8 cs, [ a e' ] | % 142
    d8 [ a d ] d [ a d ] d [ a d ] d [ a d ] | % 143
    cs8 [ a cs ] cs [ a cs ] d4 r8 r4 r8   | % 144
    R1.   | % 145
    R1.*4   | % 149
    R1.   | \barNumberCheck #150
    R1.*5   | % 155
    R1.
  }
  \repeat volta 2 {
    | % 156
    c8 [ a c ] c [ g c ] c [ a c ] c [ g c ] | % 157
    c8 [ a f' ] e [ c e ] f [ c f ] e [ c e ] | % 158
    f8 [ c f ] e [ c e ] f [ c f ] g [ c, g' ] | % 159
    a8 [ g f ] e [ f d ] c2.   | \barNumberCheck #160
    R1.   | % 161
    R1.*3   | % 164
    R1.   | % 165
    R1.*3   | % 168
    bf8 [ g bf ] c4 r8 bf [ g bf ] c4 r8 | % 169
    b8 [ g b ] d [ b d ] c [ g c ] d4 r8 | \barNumberCheck
    #170
    c8 [ g c ] d4 r8 c [ g c ] ef [ c ef ] | % 171
    cs8 [ a cs ] e4 r8 d [ a d ] e4 r8   | % 172
    d8 [ a d ] e4 r8 d4 r8 r4 r8   | % 173
    R1.*3   | % 176
    R1.   | % 177
    R1.*3 | \barNumberCheck #180
    r2. f8 [ d f ] f [ d f ]   | % 181
    bf4 r8 f [ d f ] f [ d f ] f [ d f ] | % 182
    bf4 r8 g [ e g ] e [ c e ] e [ c e ] | % 183
    a4 r8 f [ d f ] d [ bf d ] d [ bf d ] | % 184
    g4 r8 cs, [ a e' ] g4 r8 cs, [ a e' ]   | % 185
    d8 [ a d ] d [ a d ] d [ a d ] d [ a d ] | % 186
    cs8 [ a cs ] cs [ a cs ] d2. ^\fermata
  }
}

PartPFourVoiceOne =  \relative f {
  \clef "alto" \key f \major \numericTimeSignature\time 4/4 f8 [ g a
  g8 ] f [ g a g ] | % 2
  f8 [ g a g ] f [ g a g ] | % 3
  f8 [ a g f ] e' [ d e d ]   | % 4
  cs8 [ d e d ] cs [ d e d ] | % 5
  cs8 [ d e d ] cs [ d e d ] | % 6
  cs8 [ e d cs ] d [ cs d a ] | % 7
  a1 ~   | % 8
  a2 cs8 [ d e cs ] | % 9
  a8 [ f' e e ] a, [ f' e e ] | \barNumberCheck #10
  a,4 r8 a bf4 a | % 11
  a8 [ g a e ] a [ f' e e ]   | % 12
  a,8 [ f' e e ] a,4 r8 a | % 13
  bf4 a f r | % 14
  R1*2   | % 16
  cs'8 [ d e cs ] a4 r | % 17
  R1*2   | % 19
  R1*5 | % 24
  a8 [ bf c bf ] a [ bf c bf ]   | % 25
  a8 [ bf c bf ] a [ bf c a ] | % 26
  g8 [ f g f ] g [ f g f ] | % 27
  g8 [ f g f ] g [ f g f ] | % 28
  g8 [ f g e' ] c [ bf c a ]   | % 29
  g8 [ g' g g ] e [ e e e ] | \barNumberCheck #30
  a8 [ a a a ] bf [ bf bf bf ] | % 31
  bf8 [ bf bf bf ] e, [ e e e ] | % 32
  cs8 [ cs cs cs ] a [ a a a ]   | % 33
  a8 [ a a a ] a [ a a a ] | % 34
  a8 [ f' f d ] fs [ d d d ] | % 35
  bf'8 [ e, e a ] b [ f e d ] | % 36
  e16 [ d e f ] e8 [ e ] c4 r | % 37
  R1   | % 38
  R1*5   | % 43
  R1*4 | % 47
  c8 [ d e d ] c [ d e d ]   | % 48
  c8 [ d e d ] c [ d e c ] | % 49
  b4 e8 [ fs ] gs [ fs e fs ] | \barNumberCheck #50
  gs8 [ fs e fs ] gs [ fs e fs ] | % 51
  e8 [ d e c ] b c4 d8   | % 52
  b8 d4 e8 e4 r8 fs | % 53
  a8 bf4 c8 a c,4 d8 | % 54
  d4 r8 e g a4 bf8 | % 55
  g8 bf,4 c8 c4 r8 f | % 56
  g8 f4 ef8 a g4 fs8   | % 57
  d4 r8 fs g4 fs | % 58
  g4 r r2 | % 59
  R1*2   | % 61
  R1*5   | % 66
  R1*4   | \barNumberCheck #70
  R1*2 | % 72
  r2 bf,8 [ c d c ] | % 73
  bf8 [ c d c ] bf [ c d g, ]   | % 74
  cs8 [ d e d ] cs [ d e d ] | % 75
  cs8 [ d e d ] cs [ d e cs ] | % 76
  a4 a8 [ g ] f [ g a g ] | % 77
  f8 [ g a g ] f [ g a f ]   | % 78
  a4 r r2 | % 79
  R1*3   | % 82
  R1*4   | % 86
  r4 r8 a a2 ~   | % 87
  a1 | % 88
  cs8 [ d e cs ] a [ f' e e ] | % 89
  a,8 [ f' e e ] a,4 r8 a | \barNumberCheck #90
  bf4 a a8 [ g a f ]   | % 91
  a8 [ f' e e ] a, [ f' e e ] | % 92
  a,4 r8 a bf4 a | % 93
  a1 \bar "||"
    | % 94
  \key bf \major \time 3/4 g'8 [ g g g g g ] | % 95
  fs8 [ fs f f f f ] | % 96
  e8 [ e ef ef ef ef ] | % 97
  d8 [ d d d d d ] | % 98
  g,8 [ g c c d d ] | % 99
  g,8 [ g' g g g g ] | \barNumberCheck #100
  fs8 [ fs f f f f ]   | % 101
  e8 [ e ef ef ef ef ]   | % 102
  d8 [ d d d d d ] | % 103
  g,8 [ g c c d d ] | % 104
  g,8 [ g' g g g g ] | % 105
  fs8 [ fs f f f f ]   | % 106
  e8 [ e ef ef ef ef ] | % 107
  a,8 [ a a a a a ] | % 108
  d8 [ d g g g g ] | % 109
  a8 [ a, a a a a ] | \barNumberCheck #110
  d8 [ g, a a a a ] | % 111
  d8 [ d d d d d ]   | % 112
  cs8 [ cs c c c c ]   | % 113
  b8 [ b bf bf bf bf ] | % 114
  a8 [ a' g g e e ] | % 115
  f8 [ f f f f f ] | % 116
  bf,8 [ bf bf bf bf bf ] | % 117
  a8 [ a a a bf bf ]   | % 118
  c8 [ c c c c c ] | % 119
  f8 [ f f f f f ]   | \barNumberCheck #120
  fs8 [ fs fs fs fs fs ] | % 121
  g8 [ g g g g g ] | % 122
  g8 [ g g g g g ] | % 123
  fs8 [ fs f f f f ] | % 124
  e8 [ e ef ef ef ef ]   | % 125
  d8 [ d d d d d ] | % 126
  g,8 [ c d d d d ] | % 127
  a'8 [ a a a g g ] | % 128
  fs8 [ g d d d d ] | % 129
  g,8 [ g' g g g g ] | \barNumberCheck #130
  fs8 [ fs f f f f ]   | % 131
  e8 [ e ef ef ef ef ] | % 132
  d8 [ d d d d d ]   | % 133
  g,8 [ c d d d d ] | % 134
  g,2. ^\fermata \bar "||"
    \repeat volta 2 {
    | % 135
    \key f \major \time 12/8 d'4 r8 d4 r8 d4 r8 d4 r8 | % 136
    d4 r8 d4 r8 d4 a'8 bf4 bf8 | % 137
    e,4 r8 e4 r8 f4 r8 f4 r8 | % 138
    f4 r8 f4 r8 f4 r8 f4 r8   | % 139
    e4 r8 e4 r8 e4 r8 e4 r8 | \barNumberCheck #140
    d4 r8 d4 r8 d4 r8 d4 r8 | % 141
    cs4 r8 e4 r8 cs4 r8 a4 r8 | % 142
    a4 r8 a4 r8 a4 r8 a4 r8 | % 143
    a4 r8 a4 r8 f4 r8 r4 r8   | % 144
    R1.   | % 145
    R1.*4   | % 149
    R1.   | \barNumberCheck #150
    R1.*5   | % 155
    R1.
  }
  \repeat volta 2 {
    | % 156
    a'4 r8 g4 r8 a4 r8 g4 r8 | % 157
    a4 r8 c,4 r8 c4 r8 c4 r8 | % 158
    c4 r8 c4 r8 c4 r8 e4 r8 | % 159
    c4. c'4 d8 g,2.   | \barNumberCheck #160
    R1.   | % 161
    R1.*3   | % 164
    R1.   | % 165
    R1.*3   | % 168
    bf4 r8 a4 r8 bf4 r8 a4 r8 | % 169
    d,4 r8 g4 r8 g4 r8 b4 r8 | \barNumberCheck #170
    g4 r8 b4 r8 g4 r8 g4 r8 | % 171
    a4 r8 a4 r8 a4 r8 a4 r8   | % 172
    a4 r8 a4 r8 a4 r8 r4 r8   | % 173
    R1.*3   | % 176
    R1.   | % 177
    R1.*3 | \barNumberCheck #180
    r2. f4 r8 f4 r8   | % 181
    f4 r8 f4 r8 f4 r8 f4 r8 | % 182
    e4 r8 e4 r8 e4 r8 e4 r8 | % 183
    d4 r8 d4 r8 d4 r8 d4 r8 | % 184
    cs4 r8 e4 r8 cs4 r8 a4 r8   | % 185
    a4 r8 a4 r8 a4 r8 a4 r8 | % 186
    a4 r8 a4 r8 f2. ^\fermata
  }
}

PartPFiveVoiceOne =  \relative d {
  \clef "bass" \key f \major \numericTimeSignature\time 4/4 d8 [ e f
  e8 ] d [ e f e ] | % 2
  d8 [ e f e ] d [ e f e ] | % 3
  d8 [ f e d ] a [ b cs b ]   | % 4
  a8 [ b cs b ] a [ b cs b ] | % 5
  a8 [ b cs b ] a [ b cs b ] | % 6
  a8 [ cs b a ] d [ e f d ] | % 7
  a1 ~   | % 8
  a2 ~ a8 [ b cs b ] | % 9
  d8 [ d a cs ] d [ d a cs ] | \barNumberCheck #10
  d8 [ e f d ] g,4 a | % 11
  d8 [ e f d ] d, [ d' a cs ]   | % 12
  d8 [ d a cs ] d [ e f d ] | % 13
  g,4 a d8 [ e ^"Solo" f d ] | % 14
  cs8 [ b cs a ] d [ e f d ] | % 15
  cs8 [ d cs a ] f' [ e f d ]   | % 16
  a8 ^"" ^"Tutti" [ b cs a ] d [ e ^"Solo" f d ] | % 17
  g,8 [ a bf g ] c [ d e c ] | % 18
  f,8 [ g a f ] bf [ c d bf ]   | % 19
  e,8 [ f g e ] a [ b cs a ] | \barNumberCheck #20
  d8 [ e f d ] e4 f8 [ g ] | % 21
  a2 c,4 d8 [ e ] | % 22
  f2 c4 d8 [ e ] | % 23
  f8 [ a, bf bf' ] c4 c, | % 24
  f8 ^"Tutti" [ g a g ] f [ g a g ]   | % 25
  f8 [ g a g ] f [ g a f ] | % 26
  c8 [ d e d ] c [ d e d ] | % 27
  c8 [ d e d ] c [ d e d ] | % 28
  c8 [ d e c ] f [ g a f ]   | % 29
  e8 [ c' c c ] a [ a g g ] | \barNumberCheck #30
  f8 [ f f f ] g [ g g g ] | % 31
  g8 [ g g g ] a [ a a a ] | % 32
  a,8 [ a a a ] d [ d d d ]   | % 33
  cs8 [ cs b a ] d [ d d d ] | % 34
  d8 [ d' d d ] c ? [ c c bf16 a ] | % 35
  g8 [ g g f ] e [ d c b ] | % 36
  a16 [ b c d ] e8 [ e, ] a4 r | % 37
  a4 ^"Solo" r gs r   | % 38
  gs4 r a r | % 39
  a4 d e2 | \barNumberCheck #40
  R1*3   | % 43
  r2 a,4 r | % 44
  gs4 r a r | % 45
  f'4 r c r | % 46
  c4 r d e | % 47
  a,8 ^"Tutti" [ b c b ] a [ b c b ]   | % 48
  a8 [ b c b ] a [ b c a ] | % 49
  e'8 [ fs gs fs ] e [ fs gs fs ] | \barNumberCheck #50
  e8 [ fs gs fs ] e [ fs gs e ] | % 51
  a,8 [ b c a ] e' [ e e e ]   | % 52
  e8 [ e e e ] a,4 r8 d | % 53
  d8 [ d d d ] d [ d d d ] | % 54
  g,4 r8 c c [ c c c ] | % 55
  c8 [ c c c ] f,4 r8 d' | % 56
  c8 [ c c c ] c [ c c c ]   | % 57
  bf4 fs'8 [ d ] g [ c, d d, ] | % 58
  g4 g'2 ^"Solo" fs4 | % 59
  g4 g,2 fs4 | \barNumberCheck #60
  g4 g' d8 [ c bf g ]   | % 61
  c2 f | % 62
  bf,2 ef | % 63
  a,2 d | % 64
  g2 a | % 65
  bf2 c   | % 66
  d4 bf c a | % 67
  bf4 g a fs | % 68
  g4 ef d2 ~ | % 69
  d1 ~   | \barNumberCheck #70
  d1 ~ | % 71
  d8 [ e fs d ] bf [ g ] fs'4 | % 72
  g4 d g,8 ^"Tutti" [ a bf a ] | % 73
  g8 [ a bf a ] g [ a bf g ]   | % 74
  a8 [ b cs b ] a [ b cs b ] | % 75
  a8 [ b cs b ] a [ b cs a ] | % 76
  d8 [ e f e ] d [ e f e ] | % 77
  d8 [ e f e ] d [ e f d ]   | % 78
  a4 cs ^"Solo" d r | % 79
  d4 r e r | \barNumberCheck #80
  e4 r f r | % 81
  f4 r g r   | % 82
  gs4 r a r8 cs, | % 83
  d8 [ cs ] r cs d [ cs ] r cs | % 84
  d8 [ cs ] r d e4 d | % 85
  a'4 d, a' a,   | % 86
  d4 r8 d ^"Tutti" a2 ~   | % 87
  a1 ~ | % 88
  a8 [ b cs a ] d [ d a cs ] | % 89
  d8 [ d a cs ] d [ e f d ] | \barNumberCheck #90
  g,4 a d8 [ e f d ]   | % 91
  d,8 [ d' a cs ] d [ d a cs ] | % 92
  d8 [ e f d ] g,4 a | % 93
  d1 \bar "||"
    | % 94
  \key bf \major \time 3/4 g8 [ g g g g g ] | % 95
  fs8 [ fs f f f f ] | % 96
  e8 [ e ef ef ef ef ] | % 97
  d8 [ d d d d d ] | % 98
  g,8 [ g c c d d ] | % 99
  g,8 [ g' g g g g ] | \barNumberCheck #100
  fs8 [ fs f f f f ]   | % 101
  e8 [ e ef ef ef ef ]   | % 102
  d8 [ d d d d d ] | % 103
  g,8 [ g c c d d ] | % 104
  g,8 [ g' g g g g ] | % 105
  fs8 [ fs f f f f ]   | % 106
  e8 [ e ef ef ef ef ] | % 107
  a,8 [ a a a a a ] | % 108
  d8 [ d g g g g ] | % 109
  a8 [ a, a a a a ] | \barNumberCheck #110
  d8 [ g, a a a a ] | % 111
  d8 [ d d d d d ]   | % 112
  cs8 [ cs c c c c ]   | % 113
  b8 [ b bf bf bf bf ] | % 114
  a8 [ a' g g e e ] | % 115
  f8 [ f f f f f ] | % 116
  bf,8 [ bf bf bf bf bf ] | % 117
  a8 [ a a a bf bf ]   | % 118
  c8 [ c c c c c ] | % 119
  f8 [ f f f f f ]   | \barNumberCheck #120
  fs8 [ fs fs fs fs fs ] | % 121
  g8 [ g g g g g ] | % 122
  g8 [ g g g g g ] | % 123
  fs8 [ fs f f f f ] | % 124
  e8 [ e ef ef ef ef ]   | % 125
  d8 [ d d d d d ] | % 126
  g,8 [ c d d d d ] | % 127
  a'8 [ a a a g g ] | % 128
  fs8 [ g d d d d ] | % 129
  g,8 [ g' g g g g ] | \barNumberCheck #130
  fs8 [ fs f f f f ]   | % 131
  e8 [ e ef ef ef ef ] | % 132
  d8 [ d d d d d ]   | % 133
  g,8 [ c d d d, d ] | % 134
  g2. ^\fermata \bar "||"
    \repeat volta 2 {
    | % 135
    \key f \major \time 12/8 | % 135
    d'4 ^"Tutti" r8 g,4 r8 d'4 r8 g,4 r8 | % 136
    d'4 r8 g,4 r8 d'4 f8 g4 g8 | % 137
    a4 r8 a,4 r8 d'4 r8 d4 r8 | % 138
    d4 r8 d4 r8 d4 r8 d4 r8   | % 139
    c4 r8 c4 r8 c4 r8 c4 r8 | \barNumberCheck #140
    bf4 r8 bf4 r8 bf4 r8 bf4 r8 | % 141
    a4 r8 a4 r8 a4 r8 a4 r8 | % 142
    d,4 r8 d4 r8 a'4 r8 a4 r8 | % 143
    a,4 r8 a4 r8 d4 r8 d4 ^"Solo" r8   | % 144
    a'4 r8 d,4 r8 a2.   | % 145
    d4. r8 r4 g4. r8 r4 | % 146
    c,4. r8 r4 f4. r8 r4 | % 147
    bf4. r8 r4 e,4. r8 r4 | % 148
    f4. r8 r4 g4. r8 r4   | % 149
    a4. r8 r4 bf4. r8 r4   | \barNumberCheck #150
    c4. bf a r8 r4 | % 151
    a4. r8 r4 f4. r8 r4 | % 152
    e4. r8 r4 c4. r8 r4 | % 153
    f4. bf, c c, | % 154
    f4 r8 f4 r8 f4 r8 f4 r8   | % 155
    f4. r4 r8 f2.
  }
  \repeat volta 2 {
    | % 156
    f'4 ^"Tutti" r8 c4 r8 f4 r8 c4 r8 | % 157
    f4 r8 c4 r8 f4 r8 c4 r8 | % 158
    f4 r8 c4 r8 f4 r8 c4 r8 | % 159
    f4 g8 a4 bf8 c4 r8 c,4 r8   | \barNumberCheck #160
    a4 ^"Solo" r8 a4 r8 a4 r8 a4 r8   | % 161
    bf4. r4 r8 b4 r8 b4 r8 | % 162
    c4. r4 r8 cs4 r8 cs4 r8 | % 163
    d4 r8 g4 r8 fs4 r8 fs4 r8   | % 164
    g4 r8 d4 r8 ef4 r8 c4 r8   | % 165
    d4. r4 r8 d4. r4 r8 | % 166
    d4. r4 r8 d4. r4 r8 | % 167
    d4. r4 r8 d4. d,   | % 168
    g'4 ^"Tutti" r8 fs4 r8 g4 r8 fs4 r8 | % 169
    g4 r8 g4 r8 c,4 r8 g4 r8 | \barNumberCheck #170
    c4 r8 g4 r8 c4 r8 c4 r8 | % 171
    cs4 r8 cs4 r8 d4 r8 cs4 r8   | % 172
    d4 r8 cs4 r8 d4 r8 fs4 ^"Solo" r8   | % 173
    g4 r8 b,4 r8 c4 r8 e4 r8 | % 174
    f4 r8 fs4 r8 g4 r8 gs4 r8 | % 175
    a4 r8 d,4 r8 a'4 r8 d,4 r8   | % 176
    a1. ~   | % 177
    a1. ~ | % 178
    a1. ~ | % 179
    a1. ~ | \barNumberCheck #180
    a2. d'4 ^"Tutti" r8 d4 r8   | % 181
    d4 r8 d4 r8 d4 r8 d4 r8 | % 182
    c4 r8 c4 r8 c4 r8 c4 r8 | % 183
    bf4 r8 bf4 r8 bf4 r8 bf4 r8 | % 184
    a4 r8 a4 r8 a4 r8 a4 r8   | % 185
    d,4 r8 d4 r8 a'4 r8 a4 r8 | % 186
    a,4 r8 a4 r8 d2. ^\fermata
  }
}


% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Violoncello Obbligato"
      \set Staff.shortInstrumentName = "c."
      \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
        \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
      >>
    >>
    \new StaffGroup <<
      \new StaffGroup \with {
        systemStartDelimiter =
        #'SystemStartBrace
      } <<
        \new Staff <<
          \set Staff.instrumentName = "Violini Primi"
          \set Staff.shortInstrumentName = "1."
          \context Staff <<
            \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
          >>
        >>
        \new Staff <<
          \set Staff.instrumentName = "Violini Secundi"
          \set Staff.shortInstrumentName = "2."
          \context Staff <<
            \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
          >>
        >>

      >>
      \new Staff <<
        \set Staff.instrumentName = "Viole"
        \set Staff.shortInstrumentName = "a."
        \context Staff <<
          \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Basso Continuo"
        \set Staff.shortInstrumentName = "b.c."
        \context Staff <<
          \context Voice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
        >>
      >>

    >>

  >>
  \layout {}
  % To create MIDI output, uncomment the following line:
  %  \midi {}
}

