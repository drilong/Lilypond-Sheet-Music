\version "2.14.2"
\include "deutsch.ly"

#(set-global-staff-size 18.5)

\header {
  title    = \markup \bold \italic "Première Suite"
  subtitle = "aus: \"Suite de pièces à deux dessus sans basse\""
  composer = "Jacques-Martin Hotteterre (1674-1763)"
  arranger = "arr.: Marc Lanoiselée"
  enteredby = "cellist (2014-01-26)"
}

voiceconsts = {
 \key d \minor
% \clef "treble"
 \clef "bass"
% \numericTimeSignature

 \compressFullBarRests
}

mihi = "clarinet"
milo = "bassoon"

doux = \markup \italic "doux"
fort = \markup \italic "fort"
gai  = \markup \italic "Gai"
min  = \markup \italic "Mineur"
lce  = \markup \italic "Les croches égales"

introa = {
           \tempo "1. Gravement " 2=40
           \time 2/2
           % Set default beaming for all staves
           \set Timing.beamExceptions = #'()
	   \set Timing.baseMoment = #(ly:make-moment 1 4)
	   \set Timing.beatStructure = #'(1 1 1 1)
         }

introb = { \break \tempo "2. Allemande " 4=80 \time 4/4 }
introc = { \pageBreak \tempo "3. Rondeau: Tendre, Gracieusement " 4=80  \time 2/2 }
introd = { \break \tempo "4. Rondeau II: Gai " 4=120 }
introe = { \break \tempo "5. Gigue " 4.=80 \time 6/8 }
introf = { \pageBreak \tempo "6. Passacaille " 4=80 \time 3/4 }

\include "v1.ily"
\include "v2.ily"

music = \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = \markup \center-column { "Violon-" "cello I" }
%	\transpose d d { \va }
	\transpose d g,, { \va }
      }

      \new Staff {
	\set Staff.midiInstrument = \milo
	\set Staff.instrumentName = \markup \center-column { "Violon-" "cello II" }
%	\transpose d d { \vb }
	\transpose d g,, { \vb }
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
