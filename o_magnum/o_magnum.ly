%score_options {"parts": 4, "verses": 1, "transposed": true}
scDate = "2017-Jan-27"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 16
scStaffSizeTranspose = 15.8
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 2)
scTitle = "O Magnum Misterium"
scSubtitle = ""
scComposer = "Tomás Luis de Victoria"
scArranger = ""
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""

scTransposeFrom = d 
scTransposeTo = e


scGlobal= {
  \key g \dorian
  \time 4/4
  \autoBeamOff
}



scMinimumSystemSpacingTranspose = #8
scMinimumSystemSpacing = #8


scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"
scMusicOneClefTransposed = \clef "treble"

scMusicOne =   \relative c'' {  
a1 d,2 a'2 ~ a4 a bf bf a2 r4 d4 
bf4 c d4. d8 d4 a bf a4  ~ a8 \melisma g f e f g a f g f f e16[ d] e2 ~ e \melismaEnd d2
fs1 g2 fs4. g8 a4 bf4.  \melisma a8 g4 ~ g4 fs4 \melismaEnd g4 \melisma f8 e
d4 \melismaEnd e4 f2 r4 d'4 bf c d4. d8 d4 bf4 g4 a bf4. bf8 
bf4 a4. g8 g4 ~ g4 fs4 g2 r1 r4 bf4 a4. fs8
g4 a4 bf4 g bf4. bf8 bf4 bf4 a2 a fs4 a4 a4. a8 a4 b c2 bf4. a16[ g ]a2 bf2 a r1 r4 d,4 g2
f4 d e fs g4. a8 b4 b a2 r2 | r1
r4 g4 c2 bf4 g a b c4. \melisma bf8 a g g4 ~ g4 fs8 e fs4 \melismaEnd fs 
g2 r2 fs2. fs4 | fs2 g fs4. \melisma g8 a4 bf4 ~ bf8 a a4. g8 g4 \melismaEnd 
a4 fs2 fs4 g4. g8 g2 r4 g4.\melisma a8 bf g a4 \melismaEnd d c2
bf4 d4 c4 a4 bf4. \melisma a8 g f f e16 d e4 \melismaEnd e d a'4 ~ a4 f2 bf4 ~ 
bf8 a8 g2 fs4
\time 3/2
g1 bf2 a1 fs2 g2. f4 g a bf2 a1
bf1 g2 f1 d2 e2. d4 e f g1 fs2 g1.
r2 r2 c2 bf2. a4 bf4 g | a2 f4 g a b c1 c2
bf2 d1 
\time 4/4
d1 r4 d4 d8 c bf a g4 c4. bf8 a g 
fs4 g2 fs4 | g1 ~ g1 ~ g ~ g \bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"
scMusicTwoClefTransposed = \clef "treble"

scMusicTwo =   \relative c' {  
r1 r2 d2 ~ d2 g,2 d'2. d4 ef4 ef d2 r4 d4 bf4 c d4. d8 d4 a4 bf4 d2 cs8 \ficta b 
cs2 d2 d1 d2 d4. e8 f4 f,4 g4. a8 bf4 a4 g d'4 |
d4 c a4. a8 a4 bf4. a8 g4 ~ g4 fs4 g4 g'4 d4 f4 f4. f8
f2 d4 ef4 d2 d2 ~ d2 r2 r4 g4 f4. d8
d4 fs4 g4 d d4. d8 d4 e4 f2 e2 d4 fs4 fs4. fs8 
fs4 fs g a4 ~ a8 g g2 fs4 g4 d4 f4. \melisma e16 [ f ] g4 f8 e d4 \melismaEnd a4 | r2 r4 g4 
d'2 c4 a4 b4 c4 d8 \melisma c d e f4. e16[ f] g4 \melismaEnd f8 e8 d2 r4 a4 
d2 c4 a4 bf8 \melisma c d e f2 \melismaEnd g4. \melisma f8 ef d ef4 d2. \melismaEnd d4
b2 r2 d2. d4 d2 d2 d1 ~ d
d2 r4 d4 ~ d4 d4 ef4. ef8 d4 g,8 \melisma a bf c d e f4 \melismaEnd f4 f2
d4 d e fs4 g4. \melisma f8 e d d4 ~ d4 \melismaEnd cs4 d4 f4 ~ f8 \melisma e8 d c d2 \melismaEnd
bf4 c4 d2 
\time 3/2 
d1 g2 f1 d2 e2. d4 e f g1 fs2 
g1 d2 d1 a2 c1 c2 d2 d1 d1 b2
g1 \ficta fs2 g1 g'2 f1 d2 e2. d4 e f 
g1 fs2 
\time 4/4
g2 r4 d4 d8 \melisma c b a g4 \melismaEnd g'4 ~ g8 \melisma f8 ef d8 c4 ef4 \melismaEnd
d2 r4 a4 bf4. c8 d4 ef4 ~ ef \melisma d4 c4. d8 ef2 \melismaEnd d2 ~ d1
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"
scMusicThreeClefTransposed = \clef "G_8"

scMusicThree =   \relative c' {  
r1 r r r r r r r2 
a2 ~ a2 d,2 a'2. a4 bf4 bf a2 r4 d4 bf c d4. d8 d4 a4
bf4 a4. \melisma g8 f e f2 g2 a2 \melismaEnd bf4 d bf c d4. d8 d4 c bf c a2 g4 bf a4. fs8 g4 a bf4 g d'4. d8 

c4 a g bf4 bf4. bf8 bf4 bf c4 d2 cs4 d4 d,4 d'4. d8 d4 d c2
ef2 d r4 g, d'2 c4 a b c d8 \melisma c bf a g a bf g a2. \melismaEnd a4 g2 r4 g4 
d'2 c4 a bf4 a4. g8 f e f4 g2 fs4 g bf4 c d ef4. \melisma d8 c bf c4 bf4 a8 g8 a4 \melismaEnd a4
g2 r2 a2. a4 a2 bf2 a2. g4 a2 bf a4 a2 a4 b4. b8 c4 g8 \melisma a bf c d2 \melismaEnd bf4 c4 bf2 a4

bf4 bf c d4 g,2. bf4 a1 f g2 a  
\time 3/2
g1 g2 d'1 d2 c1 c2 g2 d'1
g,1 bf2 a1 f2 g2. f4 g a bf2 a1 g1 d2 

e2 c1 d bf'2 a1 f2 g1 g2 g2 a1 
\time 4/4
g4 bf4 a8 \melisma g f e d4 \melismaEnd g8 \melisma a bf c d bf c4. d8 ef8 d c bf8 a4 g \melismaEnd 
a4 d4 d8 \melisma c bf a g4 \melismaEnd bf4 \melisma c d ef4. d8 c2. b8 a \melismaEnd b1
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"
scMusicFourClefTransposed = \clef "bass"

scMusicFour =   \relative c {  
r1 r r r 
r r r r 
r d g,2 d'2 ~ d4 d ef ef d2 r4 d4 
bf4 c d4. d8 d4 bf ef2 d2 g,4 g g'4 f bf,4. bf8 
bf4 f'4 g c,4 d2 g,4 g'4 f4. d8 e4 fs4 g2 r2
r2 r4 g,4 g'4. g8 g4 g f4. g8 a2 d,2 r2
r1 r2 r4 d4 g2 f4 d e f g \melisma f8 e d4. f8 ef4 \melismaEnd e4
d2 r2 r4 c4 g'2 f4 d e f g4 \melisma f8 e d4. c8 
bf4 a8 g a4 \melismaEnd a4 g4 g'4 f d c1 d2. d4 
g,2 r2 d'2. d4 d2 g,2 d'4. \melisma e8 fs4 g4 ~ g8 fs8 fs4 g2 \melismaEnd 
d4 d2 d4 g4. g8 c,2 g'2.  g4 f4 \melisma bf, f'2 \melismaEnd
bf,2 r2 r1 r2 d2 ~ d2 bf ef d 
\time 3/2 g,1 r2
r1. r r 
r2 r2 g2 d'1 d2 c1 c2 g2 d'1 g,1 g2 
c2 a1 g g2 d'1 d2 c1 c2 ef d1
\time 4/4 
g,4 g'4 f8 \melisma e d c bf a g f g2 \melismaEnd c1
d1 g,4 g'4 g8 \melisma f ef d c4 b \melismaEnd c2 ~ c2 g2 ~ g1 
}




  
  
scWordsOneA = \lyricmode {
O ma -- gnum mi -- ste -- ri -- um
et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
O ma -- gnum __ _ _ mi -- ste -- ri -- um
et ad -- mi -- ra -- bi -- le 
et ad -- mi -- ra -- bi -- le sa -- cra -- men -- _ tum
ut a -- ni -- ma -- li -- a
vi -- de -- runt do -- mi -- num na -- tum 
vi -- de -- runt do -- mi -- num na -- _ _ _ tum
ia -- cen -- tem in pre -- _ se -- _ _ pi -- o,
ia -- cen -- tem in pre -- _ se -- pi -- o.
O Be -- a -- ta vir -- go cu -- ius vi -- sce -- ra me -- ru -- e -- runt 
por -- ta -- re do -- mi -- num
Ie -- sum Chri -- _ _ _ stum.
al -- le -- lu -- ya, al -- _ _ le -- lu -- ya
al -- le -- lu -- ya, al -- _ _ le -- lu -- ya
al -- le -- _ _ _ _ lu -- _ _ _ ya al -- le -- lu -- ya
al -- le -- _ _ _ _ lu -- _ _ _ _ _ _ ya.
}
    
  

  
  
scWordsTwoA = \lyricmode {
O ma -- gnum mi -- ste -- ri -- um
et ad -- mi -- ra -- bi -- le sa -- cra -- men -- _ _ _ tum,
O ma -- gnum __ _ _ mi -- ste --  _ _ ri -- um
et ad -- mi -- ra -- bi -- le sa -- cra -- men -- _ tum
et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum
ut a -- ni -- ma -- li -- a
vi -- de -- runt do -- mi -- num na -- tum 
vi -- de -- runt do -- mi -- num na -- _ _ _ tum
ia -- cen -- tem ia -- cen -- tem in pre -- _ se -- pi -- _ o,
ia -- cen -- tem in pre -- se -- pi -- o.
O Be -- a -- ta vir -- go cu -- ius vi -- sce -- ra me -- ru -- e -- runt 
por -- ta -- re do -- mi -- num
Ie -- sum __ _ Chri --  stum.
al -- le -- lu -- ya, al -- _ _ le -- lu -- ya
al -- le -- lu -- ya, al -- le -- lu -- ya
al -- le -- lu --  ya al -- le -- lu -- ya
al -- _ _ le --  lu -- ya al -- le -- lu -- ya 
al -- le -- _ _ lu -- ya.
}
    
  

  
  
scWordsThreeA = \lyricmode {
O ma -- gnum mi -- ste -- ri -- um
et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
et ad -- mi -- ra -- bi -- le sa -- cra --  _ men -- tum

ut a -- ni -- ma -- li -- a, ut a -- ni -- ma -- li -- a
vi -- de -- runt do -- mi -- num na -- _ tum 
vi -- de -- runt do -- mi -- num na -- tum
ia -- cen -- tem in pre -- _ se -- pi --  o,
ia -- cen -- tem in pre -- se --  _ _ _ _ _ pi --  _o,
in pre -- _ se -- pi --  o.
O Be -- a -- ta vir -- _ _ _ go cu -- ius vi -- sce -- ra me -- ru -- e -- _ _ runt 
por -- ta -- re do -- mi -- num
Ie -- sum Chri --  stum.
al -- le -- lu -- ya, al -- le -- lu -- ya
al -- le -- lu -- ya, al -- _ _ le -- lu -- ya
al -- le -- lu --  ya al -- le -- lu -- ya
al -- le --  lu -- ya al -- le -- lu -- ya 
al -- le -- lu -- ya.
}
    
  

  
  
scWordsFourA = \lyricmode {
O ma -- gnum mi -- ste -- ri -- um
et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
et ad -- mi -- ra -- bi -- le sa -- cra --  _ men -- tum
ut a -- ni -- ma -- li -- a
vi -- de -- runt do -- mi -- num __ _ na -- tum 
ia -- cen -- tem in pre -- _ se -- pi --  o,
ia -- cen -- tem in pre -- _ se -- pi --  o,
in pre -- _ se -- _ pi -- o.

O Be -- a -- ta vir -- go cu -- ius vi -- sce -- ra
me -- ru -- e -- runt 

Ie -- sum Chri -- _ stum.

al -- le -- lu -- ya, al -- le -- lu -- ya,
al -- le -- lu -- ya, al -- le -- lu -- ya,
al -- le -- lu -- ya, al -- le -- lu -- _ ya,
al -- le -- lu -- ya.
}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
