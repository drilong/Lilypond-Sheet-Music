\version "2.14.2"
\include "deutsch.ly"

#(set-global-staff-size 25)

\header {
  title = "Sarabande"
  composer = "Louis Couperin"
  arranger = "(1626-1661)"
  enteredby = "cellist (2012-01-03)"
}

voiceconsts = {
  \clef "treble"
  \key b \major
  \time 3/4
% \numericTimeSignature
  \compressFullBarRests
  \tempo 4=80
}

%minstr = "harpsichord"
mihi = "clarinet"
%minstr = "accordion"
milo = "bassoon"

fine = \markup \bold \italic "Fine"

\include "v1.ily"
\include "v2.ily"
\include "v3.ily"

music = \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = #"Vl"
	\transpose b b { \va }
      }

      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = #"Vla"
	\transpose b b { \vb }
      }

      \new Staff {
	\set Staff.midiInstrument = \milo
	\set Staff.instrumentName = #"Vlc"
	\transpose b b { \vc }
      }
>>

\book {
  \score {
    \music
    \layout {}
  }

  \score {
    \unfoldRepeats \music

    \midi {
      \context {
        \Score
      }
    }
  }
}
