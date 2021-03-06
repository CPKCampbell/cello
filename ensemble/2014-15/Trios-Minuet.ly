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
  ragged-bottom = ##t
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
  piece = \markup { \fontsize #4 \bold "Minuet" }
  opus = \markup { \italic "Rudolf Matz" }
}

ub =  \upbow
db =  \downbow

global = {
  \key c \major
  \time 3/4
  \tempo  "Tempo di minuetto" 4 = 100
  \set Score.markFormatter = #format-mark-box-barnumbers
  \clef "bass"
}
mfEspress = \markup {
  \center-align \line {
    \hspace #3.7 mf \normal-text \italic espress.
  }
}
mfEspressDynamic = #(make-dynamic-script mfEspress)

pDolce = \markup {
  \center-align \line {
    \hspace #3.7 p \normal-text \italic dolce
  }
}
pDolceDynamic = #(make-dynamic-script pDolce)

vcI =  \relative c' {
  \global
  \repeat  volta 2 {
    c4 (g) r g (e) r g ( f e ) g ( f)  r4 |
    d' (b) r b ( g ) r f ( e d) f (e) r
  }
  %9
  \mark \default
  r4 r d,\p r r g r c (a) b (g) r
  r4 r d r r g r a\downbow d g fs8\upbow (g a b)
  \mark \default
  \repeat volta 2 {
    c4^"[A]" ( g) r4 g (e) r g ( f8 g f e) g4 (f ) r4 |
    d'4 (b) r b (g) r f (e8 f e d) f4 (e) r4 |
    \mark \default
    c'2.-> c-> c4 ( a) b-- c-- g (e)
    c'2.-> c-> c4 (a) b-- c2 r4
  }
}

vcII = \relative c {
  \global
  \repeat volta 2 {
    r4 r e\ub r r c\ub r r a~->\> a2\! r4 |
    r4 r g'\ub r r d\ub r r \tieUp g,~ ->  (< g c, >2) r4 |
  }
  \mark \default %9
  g'4\db^"Solo"\mf\> ( fs )\! r g\> ( f )\!  r g\< ( e fs ) g\> ( b d, )\! |
  g\> ( fs)\! r g\> ( f \!)  r g ( e\> ) fs-- g\! r r |
  \mark \default\repeat volta 2 {
    r4 e\mf\> ( c)\! r4 c ( g ) r r a->~ a2 r4 |
    r4 g'-2_4 ( d ) r d-4 ( b ) r r g->~ (< g c, >2) r4 |
    r4^"[B]" g' ( e ) r f ( c ) r f ( d ) r e ( c ) r g' ( e ) r f ( c ) r f-- d-- e2 r4
  }
}
vcIII = \relative c {
  \global
  \repeat volta 2 {
    r4 r < g c,>\ub r r <g c,>\ub r4 d\db\< ( cs ) e\> ( d) d-.\db\! |
    r4 r < d g,>\ub r r g-4\ub r4 c-2\db\< ( b ) d\> ( c ) c_.\!
  }
  r4 r c\ub\p r r b\ub R2.*2 |
  r4 r c'\ub r r b\ub r c\db c b r r |
  \repeat volta 2 {
    r4 c,\mf\db\> ( c, )\! r4 c'\mf\db\> ( c, )\! r d\db\< ( cs ) e\> ( d ) d_.\! |
    r4 d'\db\> ( g, )\!  r b\> ( g )\! r c\db-2\< ( b ) d\> ( c ) c-.\! |
    %
    r4^"[B]" bf\f ( c, ) r a' ( c, ) r g' ( c, ) r c' ( c, ) |
    r4 < bf' c,>2 r4 <a c,>2 r4 <g c,>2 c4\ub ( g ) c, |
  }
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

