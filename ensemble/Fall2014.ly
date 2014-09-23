\version "2.19.14"

\language  "english"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  left-margin = 1.5\cm
  #(define fonts
     (make-pango-font-tree "Verdana"
       "Nimbus Sans"
       "Luxi Mono"
       (/ staff-height pt 18)))
  indent = 0\mm
  ragged-last-bottom = ##t
  scoreTitleMarkup = \markup {
    \fill-line {
      \null
      \fontsize #4 \bold \fromproperty #'header:piece
      \fromproperty #'header:opus
    }
  }
}
#(set-global-staff-size 20)

\markup{
  \fontsize #0 {
    \fill-line{
      \column{
        \center-align{
          \vspace #2
          \override #'(thickness . 5) \box \pad-markup #2 {
            \fill-line{
              \column{
                \center-align{
                  \line{ \fontsize #8 { \bold{ \caps{ "Woodman's Wonders"}}}}
                  \vspace #0.25
                  \line{ \fontsize #2 {" "}}
                }
              }
            }
          }
          \vspace #2
          \line{ \fontsize #3 \italic{ " "}}
          \vspace #2
          \line{ \fontsize #8 { \bold{ \caps{ "Junior Cello Ensemble"}}}}
          \vspace #0.5
          \line{ \fontsize #13 { \bold{ \caps{ " "}}}}
          \vspace #2
          \line{ \fontsize #7 { "Fall 2014"}}
          \vspace #0.5
          \line{ \fontsize #8 { " "}}
          \vspace #3
          \line{ \fontsize #10 {"Cello divisi"}}
          \vspace #2
          \line{ \fontsize #4 {" "}}
          \vspace #1
          \line{ \fontsize #4 {" "}}
          \vspace #1
          \line{ \fontsize #4 {" "}}
          \vspace #15
          %    \line{ \epsfile #X #20 #" "}
          %   \vspace #1
          \line{ \fontsize #3 {"CPKCMusic"}}
          \vspace #1
          \line{ \fontsize #2 {"engraved with LilyPond"}}
        }
      }
    }
  }
}

%

\header {
  piece = \markup { \fontsize #4 \bold "Melody" }
  opus = \markup { \italic "Rudolf Matz" }
}

global = {
  \key g \major
  \time 4/4
  \tempo  "Andante cantabile" 4 = 100
  \set Score.markFormatter = #format-mark-box-barnumbers
  \clef "bass"
}
mfEspress = \markup { \center-align \line {
              \hspace #3.7 mf \normal-text \italic espress. } }
mfEspressDynamic = #(make-dynamic-script mfEspress)

pDolce = \markup { \center-align \line {
              \hspace #3.7 p \normal-text \italic dolce } }
pDolceDynamic = #(make-dynamic-script pDolce)

vcI =  \relative c' {
  \global
  b2\mp\< b4 (a ) \! b ( c d b) b ( a) g-- e--  g2 e4\> ( g)
  \mark \default %5
  b2\< b4 ( a ) b ( c d b ) g2 e4 ( g) g1\> |
  \mark \default
  a2-1_"II" a4 ( b) a ( b c a ) b ( c) a2 |
  b4 ( c ) \> a-- d,--
  \mark \default %12
  g8\p^"A" ( d g d g d fs d) g ( d a d b' d, g d )
  g8 ( e g e fs d fs d )
  \mark \default %16
  g ( d e d g,\< b d g )
  b4-1\! ( c) a--\> b-- |
  <b-1 g_4>2 r4 < b d,>^"pizz."\pDolceDynamic q r4 r <d d,> <d d, g,> r4 r2
  \bar "|."
}

vcII = \relative c' {
  \global
  g8\p ( d g d g d fs d)
  g8 ( d a' d, b' d, g d)
  g (b, e b e g, b g) e' ( g, e' g, c g e' g, )
  \mark \default %5
  g' ( d g d g d fs d)  g8 ( d a' d, b' d, g d)
  e ( g, e' g, c g e' g, ) d' (b e d g e d e )
\mark \default %9
fs8 ( d fs d fs d g d ) fs ( d g d a' d, fs d )
g ( d g e fs d fs d ) g ( d g e fs d d' d, )
\mark \default % 13
b'2\mfEspressDynamic^"A" b4 ( a ) b ( c d b ) b ( c ) a-- ( b-- )
b2. g4~\downbow ( g8 e g e fs d\> fs d )
b2\upbow r4 fs'\pDolceDynamic^"pizz." g e-> d-> <b' fs> <b g> r4 r2
\bar "|."
}

vcIII = \relative c {
\global
g2\p g4 ( d ) g1 e c2 c
\mark \default %5
g'2\downbow g4 ( d ) g1 c,2 c g'1
\mark \default %9
d2 d4 ( g ) d'2-0_4 ( d, ) g4 ( c, ) d2
g4-0_4 ( c-2) d-4---4 d,--
\mark \default
g2^"A" g4 ( d ) g1 c,2 ( d ) g1
c2\upbow d\>\downbow < d g,> r4 d,4\pDolceDynamic^"pizz."
<d' g,> r4 r d <b' d, g,> r4 r2
\bar "|."
}

\score {
  \new StaffGroup {
    <<
      \new Staff { \vcI }
      \new Staff { \vcII }
      \new Staff { \vcIII }
    >>
  }
  \layout {}
  \midi {}
}

%{

\bookpart {

global = {
\time 3\4 \tempo 4 = 76
\key c\major
}

vcI = \relative c‘ {
c4 (g) r g (e) r g ( f e ) g ( f) ¦
d' (b) r f ( e d) f (e) r 
\bar ":¦"
%9
\mark \default
r4 r d,\p r r g r c (a) b (a)

c4 ( g) r4 g (e) r g ( f8 g f e) g4 (f ) r4 ¦
d‘4 (b) r b (g) r f (e8 f e d) f4(e) r4¦

}

\score {
  \relative c' { \clef "bass" \key c \major \time 4/4
                c1~\pp c4 c2.~ \(c4\< (d )\) d ( e) f-- f-- e--\breathe\! g~ |
               \( g e--\) g2 ( e4\> ) f2 ( e4\! ) r4 f2 ( e4 ) d4 ( c2) b4~ b a ( g ) f~->\upbow
               \( f4 e\) d-- e-- f2 e-- g-- d2.\upbow ( e 4 )e2.\mark "A" \breathe g4^"Solo"\upbow
%}