%score_options { "parts": , "verses": , "transposed": false }
scDate = "2016-May-16"
\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"
#(ly:set-option 'midi-extension "mid")

scTempo = #(ly:make-moment 140 4)
scTitle = "Tosse The Pot"
scSubtitle = ""
scComposer = "Thomas Ravenscroft (1614)"
scArranger = ""
scTagline = ""
scPoet = ""
scMeter=  ""
scCopyright = ""
%{
tossThePot
===================
%}

date = #(strftime "%m-%d-%Y" (localtime (current-time)))



\include "english.ly"

%\autoBeamOff

 #(set-global-staff-size 16)

scGlobal = {
	\key f \major
	\time 12/4
	\override Score.BarNumber.padding = #3
	 
}

scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"
scMusicOne = \relative c'{ \clef treble
	\set Staff.instrumentName = "Treble"
	\bar ":..:" f4. g8 a4 a4. bf8 c4 d4. c8 bf4 a f f f4. g8 a( bf) c4. bf8 a4 bf4. bf8 g4 a f4. r8 \bar "||" \break 
	f2 a bf c1 c2 d2.( c4) bf2 a1. c2 bf a g1 c2 ef d1 c1. \break c2 a bf \slurDotted g2.( g4) \slurSolid f2 bf1 a2 g1 a4( bf) c2.( bf4) a2 bf2 g1 a1.( a1.) \bar ":|." \pageBreak
}

scMusicBOne = \relative c'{ \clef treble
	\bar ":..:" f4. g8 a4 a4. bf8 c4 d4. c8 bf4 a f f f4. g8 a( bf) c4. bf8 a4 bf4. bf8 g4 a f4. r8^\markup{ \right-align{Fine}}  \bar "||" \break 
	f2 a bf c1 c2 d2.( c4) bf2 a1. c2 bf a g1 c2 ef d1 c1. \break c2 a bf \slurDotted g2.( g4) \slurSolid f2 bf1 a2 g1 a4( bf) c2.( bf4) a2 bf2 g1 a1.( a1.)^\markup{ \left-align{ \line{D.C. al Fine } } } \bar ":|." 
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "treble"
scMusicTwo = \relative c'{ \clef treble
	\set Staff.instrumentName = "Medius"
	c4. c8 f4 f4. g8 a4 bf4. bf8 f4 f4 c c c4. c8 f4 e4. e8 f4 g4. f8 e4 f f4. r8 \bar "||" \break
	c2 f2. g4 a1 a2 bf1 f2 f1. a2 g f e1 g2 g1 g2 e1. \break g2 f g \slurDotted e2.( d4) \slurSolid c2 d2.( e4) f2 e1 f4( g) a2.( g4) f2 f1 e2 f1.( f1.) 
}
scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"
scMusicThree = \relative c'{ \clef "G_8"
	\set Staff.instrumentName = "Tenor"
	 a4. bf8 c4 c4. c8 f4 f4. e8 d4 c4 c c a4. g8 f4 g4. g8 a4 d4. d8 c4 c c4. r8 \bar "||" \break
	a2 c d c1 f2 f2.( e4) d2 c1. f2 f c2 c1 c2 c1 b2 c1. \break e2 c2 d2 \slurDotted c( g) \slurSolid a bf( g) c c1 c2 c f1 d2 c1 c1.( c1.) 
}
scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"
scMusicFour = \relative c { \clef "bass"
	\set Staff.instrumentName = "Basis"
	 f4. f8 f4 f4. f8 f4 bf,4. bf8 bf4 f'4 f4 f f4. e8 d4 c4. c8 f4 bf,4. bf8 c4 f4 f,4. r8 \bar "||" \break
	f'2 f bf,2 f'1 f2 bf,1 bf2 f'1. f2 f f2 c1 c2 g'1 g,2 c1. \break c2 f2 bf,2 \slurDotted c2.( bf4) \slurSolid a2 g1 f2 c'1 f2 f1 f2 bf, c1 f1.( f1.)  
}
	 	

Chorus = \lyricmode{
	Tosse the pot tosse the pot, let vs be mer -- ry,
	and drinke till our cheeks be as red as a Cher -- ry.
}
blankChorus = \lyricmode{
	_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

% 8; 8; 8; 6
VerseA = \lyricmode{
	\set stanza = "1. "
	We take no thought we have no care, for still we spend, and ne -- uer spare,
	till of \set ignoreMelismata = ##t all mo -- ney \unset ignoreMelismata our pursse is bare, we e -- uer tosse the pot.
}
VerseB = \lyricmode{
	\set stanza = "2. "
	We drinke ca -- rouse with hart most free, a har -- ty draught I drinke to thee:
	Then fill the pot a -- gaine to me, and e -- uer tosse the pot.
}
VerseC = \lyricmode{
	\set stanza = "3. "
	And when our mon -- y is all spent, Then sell our goods, and spend our rent, 
	Or drinke it vp with one con -- sent, and e -- uer tosse the pot.
}

VerseD = \lyricmode{
	\set stanza = "4. "
	When all is gone we haue no more, Then let vs set it on the score,
	Or chalke it vp be -- hinde the dore, and e -- uer tosse the pot.
}

VerseE = \lyricmode{
	\set stanza = "5. "
	And when our cre -- dit is all lost, Then may we goe and kisse the post,
	And eat Browne bread in steed of rost, and e -- uer tosse the pot.
}

VerseF = \lyricmode{
	\set stanza = "6. "
	Let vs con -- clude as we be -- gan, And tosse the pot from man to man,
	And drinke as much now as we can, and e -- uer tosse the pot.
}

%Solfege
scSolfOne = \lyricmode{ \set ignoreMelismata = ##t
Do Re Mi Mi Fa So La So Fa Mi Do Do Do Re Mi Fa So Fa Mi Fa Fa Re Mi Do Do Mi Fa So So La So Fa Mi So Fa Mi Re So Te La So So Mi Fa Re Re Do Fa Mi Re Mi Fa So Fa Mi Fa Re Mi
}
scSolfTwo = \lyricmode{ \set ignoreMelismata = ##t
So So Do Do Re Mi Fa Fa Do Do So So So So Do Ti Ti Do Re Do Ti Do Do So Do Re Mi Mi Fa Do Do Mi Re Do Ti Re Re Re Ti Re Do Re Ti La So La Ti Do Ti Do Re Mi Re Do Do Ti Do 
}
scSolfThree = \lyricmode{ \set ignoreMelismata = ##t
Mi Fa So So So Do Do Ti La So So So Mi Re Do Re Re Mi La La So So So Mi So La So Do Do Ti La So Do Do So So So So Fi So Ti So La So Re Mi Fa Re So So So So Do La So So 
}
scSolfFour = \lyricmode{ \set ignoreMelismata = ##t
Do Do Do Do Do Do Fa Fa Fa Do Do Do Do Ti La So So Do Fa Fa So Do Do Do Do Fa Do Do Fa Fa Do Do Do Do So So Re Re So So Do Fa So Fa Mi Re Do So Do Do Do Fa So Do 
}



\include "./score.ly"

\version "2.18.0"  % necessary for upgrading to future LilyPond versions.
