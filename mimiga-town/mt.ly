\version "2.22.2"
\language "english"

\header {
  title = "Mimiga Town"
  composer = "Pixel (Daisuke Amaya)"
  arranger = "Arranged by ttw"
}

theme = \relative c'' {
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 120

  \key f \major
  
  \repeat volta 2 {
    f,4 a4 g8 f8 r8
    f8 c'4 a8 c4 r8

    c4 d4 c4 f4 c4 bf2.

    bf4 c4 bf4 df4 bf4  
  } \alternative {
    { a2. a4 a4 g4 g4 f4 f2 e2 }
    { f'2. c4 bf4 a4 f4 g4 g8 f2 }
  }
}

% pdf score
\score {
  \new Staff \with {
    instrumentName = "Theme"
  } {\clef treble \theme}
  \layout {}
}

% midi score
\score {
  \new Staff \with {
    midiInstrument = "marimba"
  } {
    \unfoldRepeats { \theme }
  }
  \midi {}
}
