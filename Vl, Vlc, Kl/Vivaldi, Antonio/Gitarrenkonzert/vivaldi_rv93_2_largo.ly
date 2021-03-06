\version "2.12.2"
\include "deutsch.ly"

#(set-global-staff-size 16)

\header {
  title = "Konzert für Gitarre"
  subtitle = "(arrangiert für Klaviertrio)"
  composer = "Antonio Vivaldi (1675-1741)"
  arranger = "arr. O. Wasmuth"
  opus = "RV 93"
  enteredby = "cellist (2010-02-21)"
}

voiceconsts = {
 \key d \major
 %\numericTimeSignature
 \compressFullBarRests
 \time 4/4
 \tempo "2. Largo " 8=60
}

\include "2_v1.ily"
\include "2_v2.ily"
\include "2_v3.ily"
\include "2_v4.ily"

\book {
    \score {

    <<
      \new Staff <<
	\set Staff.instrumentName = "Violine "
	\ve
      >>

      \new Staff <<
	\set Staff.instrumentName = "Cello "
	\vf
      >>

      \new PianoStaff <<
	\set PianoStaff.instrumentName = "Piano "
	\vg
	\vh
      >>
    >>

    \layout {}

    \midi {
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 60 8)
      }
    }
  }
}
