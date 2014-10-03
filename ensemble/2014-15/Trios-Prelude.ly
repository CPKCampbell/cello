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
  piece = \markup { \fontsize #4 \bold "Prelude" }
  opus = \markup { \italic "Rudolf Matz" }
}

ub =  \upbow
db =  \downbow

global = {
  \key c \major
  \time 4/4
  \tempo   4 = 84
  \set Score.markFormatter = #format-mark-box-barnumbers
  \clef "bass"
}

vcI =  \relative c' {
  \global
  \repeat  volta 2 {
c1~\pp c4 c2.~ ( c4\< d ) d ( e ) f-- f-- e\! \breathe g~ ( g e--) g2 ( e4\> ) f2 ( e4\! ) |
r4 f2 ( e4 ) d4 ( c2 ) b4~ b a ( g ) f~->\ub( |
f4 e ) d-- e-- f2 e4-- g-- d2.\ub ( e4 ) |
e2.^"[A]" \breathe g4\ub^"Solo" c ( b ) a-- g-- f2 e4-- d-- e2 c |
d2. d'4\ub g ( fs ) e-- d-- c2 b4 ( d ) a2. ( g4 ) < g b,>1 |

  }
  %21
  \mark \default

  }


vcII = \relative c {
  \global
  \repeat volta 2 {

  }
  \mark \default %9

}
vcIII = \relative c {
  \global
  \repeat volta 2 {

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

