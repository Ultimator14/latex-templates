\version "2.23.2"

\book {
  \bookOutputName "out/Trompte I"
  \paper { #(set-paper-size "a5landscape") }
  \include "general/header.ily"
  \genPartScore "Trompete I" { \compressEmptyMeasures \transposition b \transpose b c' { << \TrumpetI \Global >> }}
}
\book {
  \bookOutputName "out/Trompte II"
  \paper { #(set-paper-size "a5landscape") }
  \include "general/header.ily"
  \genPartScore "Trompete II" { \compressEmptyMeasures \transposition b \transpose b c' { << \TrumpetII \Global >> }}
}
\book {
  \bookOutputName "out/Trompte III"
  \paper { #(set-paper-size "a5landscape") }
  \include "general/header.ily"
  \genPartScore "Trompete III" { \compressEmptyMeasures \transposition b \transpose b c' { << \TrumpetIII \Global >> }}
}
\book {
  \bookOutputName "out/Klarinette I"
  \paper { #(set-paper-size "a5landscape") }
  \include "general/header.ily"
  \genPartScore "Klarinette I" { \compressEmptyMeasures \transposition b \transpose b c' { << \ClarinetI \Global >> }}
}
\book {
  \bookOutputName "out/Altsax I"
  \paper { #(set-paper-size "a5landscape") }
  \include "general/header.ily"
  \genPartScore "Altsax I" { \compressEmptyMeasures \transposition es \transpose es c' { << \AltoSaxI \Global >> }}
}
\book {
  \bookOutputName "out/Posaune I"
  \paper { #(set-paper-size "a5landscape") }
  \include "general/header.ily"
  \genPartScore "Posaune I" { \compressEmptyMeasures << \TromboneI \Global >> }
}
\book {
  \bookOutputName "out/Tuba I"
  \paper { #(set-paper-size "a5landscape") }
  \include "general/header.ily"
  \genPartScore "Tuba I" { \compressEmptyMeasures \transposition b, \transpose b c' { << \TubaI \Global >> }}
}
\book {
  \bookOutputName "out/Schlagzeug I"
  \paper { #(set-paper-size "a5landscape") }
  \include "general/header.ily"
  \genDrumPartScore "Schlagzeug I" { \compressEmptyMeasures << \Drums \Global >> }
}