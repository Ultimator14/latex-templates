genStaff =
#(define-music-function
  (name midi score)
  (string? string? ly:music?)
  #{
    \new Staff \with {
      instrumentName = #name
      midiInstrument = #midi
    } { #score }
  #}
)

genDrumStaff =
#(define-music-function
  (name midi score)
  (string? string? ly:music?)
  #{
    \new DrumStaff \with {
      instrumentName = #name
      midiInstrument = #midi
    } { #score }
  #}
)

genPartScore =
#(define-scheme-function
  (str score)
  (string? ly:music?)
  #{
    \score {
      \new Staff \with {
        instrumentName = #str
      } { #score }
      \layout { }
    }
  #}
)

genDrumPartScore =
#(define-scheme-function
  (str score)
  (string? ly:music?)
  #{
    \score {
      \new DrumStaff \with {
        instrumentName = #str
      } { #score }
      \layout { }
    }
  #}
)
