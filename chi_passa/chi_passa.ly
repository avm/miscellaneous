%score_options {"parts": 4, "verses": 4, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = ""
scSubtitle = ""
scComposer = ""
scArranger = ""
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""



scGlobal= {
  \key d \dorian
  \time 4/2
  \autoBeamOff
}



scMinimumSystemSpacingTranspose = #8
scMinimumSystemSpacing = #8


scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"

scMusicOne =   \relative c' {  

}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "treble"

scMusicTwo =   \relative c' {  

}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  

}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c' {  

}




  
  
scWordsOneA = \lyricmode {

}
    
  
scWordsOneB = \lyricmode {

}
    
  
scWordsOneC = \lyricmode {

}
    
  
scWordsOneD = \lyricmode {

}
    
  

  
  
scWordsTwoA = \lyricmode {

}
    
  
scWordsTwoB = \lyricmode {

}
    
  
scWordsTwoC = \lyricmode {

}
    
  
scWordsTwoD = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  
scWordsThreeB = \lyricmode {

}
    
  
scWordsThreeC = \lyricmode {

}
    
  
scWordsThreeD = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  
scWordsFourB = \lyricmode {

}
    
  
scWordsFourC = \lyricmode {

}
    
  
scWordsFourD = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
