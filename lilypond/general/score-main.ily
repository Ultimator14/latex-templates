\book {
  \bookOutputName "Partitur"
  \include "general/header.ily"
  
  \score {
    <<
      \genStaff      "Trompete I"   "trumpet"  << \TrumpetI \Global >>
      \genStaff      "Trompete II"  "trumpet"  << \TrumpetII \Global >>
      \genStaff      "Trompete III" "trumpet"  << \TrumpetIII \Global >>
      
      \genStaff      "Klarinette I" "clarinet" << \ClarinetI \Global >>

      \genStaff      "Altsaxophon"  "alto sax" << \AltoSaxI \Global >>
      
      \genStaff      "Posaune"      "trombone" << \TromboneI \Global >>
      
      \genStaff      "Tuba"         "tuba"     << \TubaI \Global >>
      
      \genDrumStaff  "Schlagzeug"   "drums"    << \Drums \Global >>
    >>
    
  \layout { } % Create PDF
  \midi { }   % Create MIDI
  }
}