%score_options { "parts": 4, "verses": 1, "transposed": false }
scDate = "2016-May-16"
\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"
#(ly:set-option 'midi-extension "mid")

scTempo = #(ly:make-moment 140 4)
scTitle = "Jouissance Vous Donneray"
scSubtitle = "I will give you joy"
scComposer = "Music by Claudin de Sermisy (1490-1562)"
scArranger = ""
scTagline = ""
scPoet = "from Chansons nouvelles, 1527"
scMeter=  ""
scCopyright = ""

\include "english.ly"
#(set-global-staff-size 20)


scGlobal= {
  \key g \dorian
  \time 2/2
}

scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"
scMusicOne =   \relative c'' {  
    g2 g4 g | a4  bf4. a8 g f | g4 g f bf| bf bf d2~ | d4 c8 bf a4 c4~|c bf2 a4
    bf2 r4 a4~|a e g2~|g4 f8 e d4 e | f4. g8 a4 bf4 | bf8 a c bf a g g4~|
    g fs g2~|g bf2 | bf4 bf d4. c8 | d4 e2 d4~|d cs d2 | r4 a bf bf 
    a d4. c8 c4~ | c bf2 a4 | bf2 r4 \repeat volta 2 {a4~ | a e g2~| g4 f d e |
	f4. g8 a4 bf4~| bf8 a c bf a g g4~| \time 2/4 g fs | \time 2/2 
}

\alternative { {\set Timing.measureLength = #(ly:make-moment 3/4) g2 r4 }
{\set Timing.measureLength = #(ly:make-moment 4/4) g1~g} }
} \bar "|."

scMusicTwoName = "altus"
scMusicTwoClef = \clef "treble"
scMusicTwo = 
\relative c' {
    d2 d4 d | d2. d4 | g,4 g a g | g' g f2~|f4 f a4. g8 | f4 e f2 |
r4 g d f | c4. d8 ef4. d8 | bf4 d2 c4 | a4 d4. c8 bf a | g4 g'4 f ef4 |
d2 d~|d d | d4 g f2 | bf2 a4 g | a2 r4 f | f f g2 |
a2. g4 | f e f2 | d4 g d 
\repeat  volta 2 {f | c4. d8 ef4. d8 | bf4 d2 c4 |
a4 d4. c8 bf a | g4 g' f ef | d2 }
\alternative { {\set Timing.measureLength = #(ly:make-moment 3/4)
                d4 g d } 
               {\set Timing.measureLength = #(ly:make-moment 4/4) d1~d } }
\bar "|."
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"
scMusicThree = 
\relative c' {
    g2 g4 bf4 | a g bf2~ | bf4 c d2 | r4 d d d | f2. e4 | d4 c8 bf c4 c | 
bf2 r4 d | a c g4. f8 | g4. a8 bf4 g | f f'4. e8 d c | bf4 ef8 d c bf a g | 
a2 g | r2 g'2 | g4 g d2 | g2 f4 e8 d | e4 e d2 | r4 d d d |
f2. e4 | d c8 bf c4 c | bf2 r4
\repeat volta 2 {
  d | a c g4. f8 | g4 a bf g |
f f'4. e8 d c | bf4 ef8 d c bf a g | a2 }
\alternative {{\set Timing.measureLength = #(ly:make-moment 3/4)g2 r4  }
              {\set Timing.measureLength = #(ly:make-moment 4/4)g1~g}}
\bar "|."
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"
scMusicFour = 
\relative g {
    g2 g4 g | f4 g4. f8 ef d | ef4 ef d g | g g bf2~|bf4 a8 g f4 a | bf g f2 |
r2 g4 d | f c c8 bf c d | ef4 d bf c | d4. e8 f4 g4~| g c, f g | 
d2 g2~ | g  g | g4 g bf2~ | bf4 g a bf | a2 r4 d, | d d g2 |
f2 d4 e | f g f2 | bf,2 g'4 
\repeat volta 2 {d | f c4. bf8 c d | ef4 d bf c |
d4. e8 f4 g4~| g c,4 f g d2 }
\alternative {{\set Timing.measureLength = #(ly:make-moment 3/4)g2 g4 } 
              {\set Timing.measureLength = #(ly:make-moment 4/4)g1~ g} }
\bar "|."

}


scWordsOneA = \lyricmode {
    Jou -- is -- san -- ce vous __ _ _ _ don -- ne -- ray, 
    Mon a -- my, et __ _ _ _ vous me -- ne -- ray
    La ou pre -- _ _ tend vostre es -- pe -- ran -- _ _ _ _ _ _ _ _ _ ce.
    Vi -- van -- te ne __ _ _ vous lais -- se -- ray; 
    En -- co -- re quant mor -- _ _ te se -- ray,
    L'es -- prit en __ au -- ra sou -- ve -- _ _ nan -- _ _ _ _ _ _ _ ce, ce.
}

scWordsTwoA = \lyricmode {
    Jou -- is -- san -- ce vous don -- ne -- ray, 
    Mon a -- my, et vous me -- _ ne -- _ ray
    La ou pre -- tend vostre es -- pe -- ran -- _ _ _ _ _ _ _ _ _ _ _ _ ce.
    Vi -- van -- te ne __ vous lais -- se -- ray; 
    En -- co -- re quant mor -- _ _ te se -- ray,
    L'es -- prit en au -- ra sou -- ve -- nan -- _ _ _ _ _ _ _ ce, 
    sou -- _ ve -- nan -- ce, L'es -- prit ce.
}

scWordsThreeA = \lyricmode {
    Jou -- is -- san -- ce vous don -- ne -- ray, 
    Mon a -- my, et vous me -- _ _ _ ne -- ray
    La ou pre -- tend __ _ _ vostre es -- pe -- ran -- _ _ _ _ _ _ _ _ _ _ _ _ ce.
    Vi -- van -- te ne __ vous lais __ _ _ _ -- se -- ray; 
    En -- co -- re quant mor -- te __ _ _ _ se -- ray,
    L'es -- prit en au -- ra sou -- ve -- nan -- _ _ _ _ _ _ ce, 
    sou --  ve -- nan -- _ _ _ _ ce, ce.
}

scWordsFourA = \lyricmode {
    Jou -- is -- san -- ce vous __ _ _ _ don -- ne -- ray, 
    Mon a -- my, et __ _ _ _ vous me -- ne -- ray
    La ou pre -- _ tend __ _ _ _ _ vostre es -- pe -- ran -- _ _ _ _ _ _ _ ce.
    Vi -- van -- te ne __ vous lais __ -- se -- ray; 
    En -- co -- re quant mor -- te se __ _ _ _ -- ray,
    L'es -- prit en au -- _ _ _ _ ra sou -- ve -- nan -- _ _ _ ce, 
    sou --  ve -- nan -- ce, L'es -- ce.
}


\include "./score.ly"

\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

