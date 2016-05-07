\paper {
  oddFooterMarkup = \markup {
    \fill-line { \line {
      \italic \fromproperty #'header:title
      " - Page "
      \fromproperty #'page:page-number-string
      " of 2"
    } }
  }
  evenFooterMarkup = \oddFooterMarkup
}
#(set-global-staff-size 18)

\include "english.ly"

global= {
  \autoBeamOff
  \key d \minor
  \time 2/4
}

chorusSpacer = {
  \repeat unfold 9 { s2 \noBreak } s2 \break
  \repeat unfold 8 { s2 \noBreak } s2 \break
}

verseSpacer = {
  \repeat unfold 7 { s2 \noBreak } s2 \break
  \repeat unfold 8 { s2 \noBreak } s2 \break
  \repeat unfold 9 { s2 \noBreak } s2 \break
  \repeat unfold 9 { s2 \noBreak } s2 \break
}

cantusChorusMusic = \relative a' {
  a4.^\markup{\bold Chorus} ( g8) | a4 f4 | d4 f4 | g2 \melisma |
  bf8([ a] f[ g]) \melismaEnd | e4 d | f g | g8([ f]) d4 | 
  c2~ | c | a'4.( g8) | a4 f | d f | g2 \melisma |
  bf8([ a] f[ g]) \melismaEnd | e4 d | f g | g8([ f]) d([ e16 c]) | d2^"Fine"\fermata
  \bar "||"
}

tenorChorusMusic = \relative c {
  d2 | d4 f | a d, | c2 \melisma | f2 \melismaEnd | g4 a | d, c | g' a |
  c2~ | c | d, | d4 f | a d, | c2 \melisma | f2 \melismaEnd | g4 a | d, c | f g | a2\fermata
  \bar "||"
}

cantusMusic =   \relative c' {  
  r4^\markup{\bold Verse} d | d a' | b d | b( c8[ a]) | g4 b|
  c a | g8[ f] f8[ e] | d2 

  r4 d | d a' | b d | b( c8[ a]) | g4 b|
  c a | g8[ f] f8[ e] | d2~ | d

  a'4.( g8) | a4 f4 | d4 f4 | g2
  \melisma bf8([ a] f[ g]) \melismaEnd | e4 d | f g | g8[ f] d4 | c2~ | c

  a'4.( g8) | a4 f4 | d4 f4 | g2
  \melisma bf8([ a] f[ g]) \melismaEnd | e4 d | f g | g8[ f] d8[ e16 c] | d2~ d^"D.C." 

  \bar "|."

}

tenorMusic = \relative a {
  r4 a | a d, | d d | g( f) | e e | c d | f g | a2 

  r4 a | a d, | d d | g( f) | e e | c d | f g | a2~ | a |

  d,2 | d4 f | a d, | c2 | f | g4 a | d, c | g' a | c2~ | c
  d,2 | d4 f | a d, | c2 | f | g4 a | d, c | f g | a2~ | a

  \bar "|."

}

chorusWords = \lyricmode {
  Stel -- la splen -- dens in mon -- te ut so -- lis ra -- di -- um, __ 
  Mi -- ra -- cu -- lis ser -- ra -- to, Ex -- au -- di po -- pu -- lum.
}

wordsA = \lyricmode {
  \set stanza = "*1."
  \set shortVocalName = "*1."

  Con -- cur -- runt u -- ni -- ver -- si
  gau -- den -- tes po -- pu -- li

  Di -- ve -- tes et e -- ge -- ni,
  gran -- des et par -- vu -- li, __

  Ip -- sum in gre -- di -- un -- tur, 
  ut cer -- nunt o -- cu -- li, __
  
  Et in -- de re -- ver -- tun -- tur
  gra -- ti -- is re -- ple -- ti. __
}

wordsB = \lyricmode {
  \set stanza = "2."
  \set shortVocalName = "2."

  Prin -- ce -- pes et mag -- na -- tes
  ex stir -- pe re -- gi -- a

  Sae -- cu -- li po -- tes -- ta -- tes,
  ob -- ten -- ta ve -- ni -- a __

  Pec -- ca -- mi -- num pro -- cla -- mant 
  tun -- den -- tes pec -- to -- ra __ 

  Po -- pli -- te fle -- xo cla -- mant 
  hic: A -- ve Ma -- ri -- a. __ 

}

wordsC = \lyricmode {
  \set stanza = "3."
  \set shortVocalName = "3."

  Prae -- la -- ti et ba -- ro -- nes,
  co -- mi -- tes in -- cli -- ti,

  Re -- li -- gi -- o -- si om -- nes
  at -- que pres -- by -- te -- ri, __

  Mi -- li -- tes, mer -- ca -- tor -- res,
  ci -- ves, ma -- ri -- na -- ri, __ 

  Bur -- gen -- ses, pis -- ca -- to -- res
  prae -- mi -- an -- tur i -- bi. __ 

}

wordsD = \lyricmode {
  \set stanza = "4."
  \set shortVocalName = "4."

  Rus -- ti -- ci a -- ra -- to -- res,
  nec non no -- ta -- ri -- i,

  Ad -- vo -- ca -- ti, scul -- to -- res,
  cunc -- ti li -- gni fa -- bri, __

  Sar -- to -- res et su -- to -- res,
  nec non la -- ni -- ti -- ci __ 

  Ar -- ti -- fi -- ces et om -- nes
  gra -- tu -- lan -- tur i -- bi __ 

}

wordsE = \lyricmode {
  \set stanza = "*5."
  \set shortVocalName = "*5."

  Re -- gi -- nae, co -- mi -- tis -- sae,
  il -- lus -- tres do -- mi -- nae,

  Po -- ten -- tes et an -- cil -- lae
  ju -- ve -- nes par -- vu -- lae, __

  Vir -- gi -- nes et an -- ti -- quae
  pa -- ri -- ter vi -- du -- ae __ 

  Con -- scen -- dunt et hunc mon -- tem 
  et re -- li -- gi -- o -- sae. __ 
}

wordsF = \lyricmode {
  \set stanza = "*6."
  \set shortVocalName = "*6."

  Co -- et -- us hi
  \set ignoreMelismata = ##t
  ag -- gre --
  \unset ignoreMelismata
  gan -- tur,
  hic ut ex -- hi -- be -- ant

  Vo -- ta, reg -- ra -- ti -- an -- tur,
  ut ip -- sa et red -- dant __

  Au -- lam is -- stam di -- tan -- tes,
  hoc cunc -- ti  vi -- de -- ant, __ 

  Jo -- ca -- li -- bus or -- nan -- tes,
  so -- lu -- ti re -- de -- ant. __ 
}

wordsG = \lyricmode {
  \set stanza = "7."
  \set shortVocalName = "7."

  Cunc -- ti er -- go pre -- can -- tes
  sex -- us ut -- ri -- us -- que,

  Men -- tes nos -- tra mun -- dan -- tes
  o -- re -- mus de -- vo -- te __

  Vir -- gi -- nem glo -- ri -- o -- sam,
  ma -- trem cle -- men -- ti -- ae, __ 

  In coe -- lis gra -- ti -- o -- sam
  sen -- ti -- a -- mus ve -- re. __ 
}

\book {

  \header{
    title = "Stella Splendens"
    poet = "From Llibre Vermell de Montserrat"
    composer = "Anonymous, Late 14th C"
    tagline = ""
  }

  \score {
    <<
      \context ChoirStaff <<
	\context Staff = cantus <<
	\context Voice = cantus {
	  <<  \global \chorusSpacer \cantusChorusMusic 	 >> 
	}
	\context Lyrics = chorusLyrics { s1 }
      >>

      \context Staff = tenor <<
	\context Voice = tenor { 
	  \clef bass
	  <<  \global \chorusSpacer \tenorChorusMusic >> 
	}
      >>

      >>

      \lyricsto "cantus" \context Lyrics = chorusLyrics \chorusWords

    >>

    \layout {
      indent = 0\mm
      between-system-space = 5\mm
    }

    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 4)
      }
    }


  }

  \score {
    <<
      %      \context ChoirStaff <<
	\context Staff = cantus <<
	\context Voice = cantus {
	  <<  \global \verseSpacer \cantusMusic 	 >> 
	}
	\context Lyrics = lyricsA { s1 }
	\context Lyrics = lyricsB { s1 }
	\context Lyrics = lyricsC { s1 }
	\context Lyrics = lyricsD { s1 }
	\context Lyrics = lyricsE { s1 }
	\context Lyrics = lyricsF { s1 }
	\context Lyrics = lyricsG { s1 }
      >>

	\context Staff = tenor <<
	\context Voice = tenor { 
	  \clef bass
	  <<  \global \verseSpacer \tenorMusic >> 
	}

	%      >>

	\lyricsto "cantus" \context Lyrics = lyricsA \wordsA
	\lyricsto "cantus" \context Lyrics = lyricsB \wordsB
	\lyricsto "cantus" \context Lyrics = lyricsC \wordsC
	\lyricsto "cantus" \context Lyrics = lyricsD \wordsD 
	\lyricsto "cantus" \context Lyrics = lyricsE \wordsE
	\lyricsto "cantus" \context Lyrics = lyricsF \wordsF
	\lyricsto "cantus" \context Lyrics = lyricsG \wordsG
      >>

      >>

      \layout {
	indent = 0\mm
	between-system-space = 5\mm
	\context{
	  \Score
	  \override VocalName #'break-align-symbol = #'vocal-name
	  
	  % stolen from StanzaNumber - right-aligns extra verse numbers
	  \override VocalName #'direction = #-1
	  \override VocalName #'X-offset-callbacks = #`(,ly:side-position-interface::aligned-side) 

	  % positions extra verse numbers in the right place
	  \override BreakAlignment #'break-align-orders = ##(; end-of-line:
	  (instrument-name left-edge ambitus breathing-sign
	  clef staff-bar key-signature
	  time-signature custos)

	  ; unbroken
	  (instrument-name left-edge ambitus breathing-sign
	  clef staff-bar key-signature
	  staff
	  time-signature custos)
	  ; begin of line
	  (instrument-name left-edge ambitus breathing-sign
	  clef key-signature staff-bar
	  time-signature vocal-name custos)

	  )
	}
      }

      
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }


    }
  }

  \version "2.10.10"  % necessary for upgrading to future LilyPond versions.

