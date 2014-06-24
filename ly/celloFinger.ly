\version "2.17.29"

#(define (text-spanner-start-stop mus)
   (let ((elts (ly:music-property mus 'elements)))
     (make-music 'SequentialMusic 'elements 
       (append  
        (list (make-music 'TextSpanEvent 'span-direction -1))
        (reverse (cdr (reverse elts)))
        (list (make-music 'TextSpanEvent 'span-direction 1))
        (list (last elts))))))

extF =
#(define-music-function (parser location fngr music)
   (string? ly:music?)
   #{
     \once \override Voice.TextSpanner.style = #'solid
     \once \override Voice.TextSpanner.font-size = #-5
     \once \override Voice.TextSpanner.Y-offset = #-5
%     \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #DOWN
     \once \override TextSpanner.bound-details.left.text = \markup { \finger $fngr }
           
     #(text-spanner-start-stop music)
   #})

\relative c {
  \clef "treble_8"
  \textSpannerDown
  \extF "5" { a8 b_6 c_7 d_8 e f }
  \textSpannerUp
  { g a bes4 a g2 }
}

