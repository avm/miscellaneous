\paper {
  oddFooterMarkup = \markup {
    \fill-line { \line {
      \italic \fromproperty #'header:title
      " - Page "
      \fromproperty #'page:page-number-string
      " of 1"
    } }
  }
  evenFooterMarkup = \oddFooterMarkup
}
\include "english.ly"
#(set-global-staff-size 18)

\header{
  title = "Fi, Maris de vostre amour"
  composer = "Late 13th C."
  poet = "Adam de la Halle"
  tagline = ""
}

global= {
  \autoBeamOff
  \key bf \major
  \time 3/4

  s2. \noBreak s2. \noBreak s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
  s2. \noBreak s2. \noBreak s2. \noBreak s2. \noBreak
  s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
  s2. \noBreak s2. \noBreak s2. \noBreak s2. \noBreak s2. \noBreak s2. \break
  s2. \noBreak s2. \noBreak s2. \noBreak s2. \noBreak s2. \noBreak s2. \break

}

cantusA = \relative c' { 
  f2 g8[ a] | bf2 bf8[ c] | d2 d16[ c bf8] | c2 
}
cantusB = \relative c'' {
  bf8[ c] | bf8([ a] g4) a | bf2 r4
}

cantusMusic = { 
  \cantusA \cantusB
  \cantusA r4
  \cantusA r4
  \cantusA \cantusB
  \cantusA \cantusB
  \bar "|."
}

altusA = \relative c'' {
  bf2 bf16[ a g8] | f2 g4 | a2 a16[ g16 f8] | g2
}
altusB = \relative c' {
  f8[ g] | f([ e] d4) e | f2 r4
}

altusMusic = { 
  \altusA \altusB
  \altusA r4
  \altusA r4
  \altusA \altusB
  \altusA \altusB
  \bar "|."
}

tenorA = \relative c' {
  bf2 c4 | bf2 ef4 | d2 d4 | c2
}

tenorB = \relative c' {
  bf8[ c] | d2 c4 | bf2 r4
}

tenorMusic = { 
  \tenorA \tenorB
  \tenorA r4
  \tenorA r4
  \tenorA \tenorB
  \tenorA \tenorB
  \bar "|."
}


words = \lyricmode {
  Fi, ma -- ris, de vostre a -- mour,
  Car __ j'ai __ a -- mi!

  Biaus est, __  et de noble a -- tour 

  Fi, ma -- ris, de vostre a -- mour.

  Il me __ sert et __ nuite et jour;
  Pour __ che __ l'aim si.

  Fi, ma -- ris, de vostre a -- mour,
  Car __ j'ai __ a -- mi!
}

\score {
  \context ChoirStaff <<
    \context Staff = cantusStaff <<
      \set Staff.instrument = "Cantus"
      \context Voice = cantus {
	<< \global \cantusMusic >> 
      }
    >>

    \context Lyrics = cantus { s1 }

    \context Staff = altusStaff <<
      \set Staff.instrument = "Altus"

      \context Voice = altus { 
	<< \global 
	\altusMusic >> 
      }
    >>

    \context Lyrics = altus { s1 }

    \context Staff = tenorStaff << \context Voice = tenor { 
      \set Staff.instrument = "Bassus"
      << \global
      \clef "G_8"
      \tenorMusic >>
    }
  >>

  \context Lyrics = tenor { s1 }
  \context Lyrics = cantus \lyricsto cantus \words
  \context Lyrics = altus \lyricsto altus \words
  \context Lyrics = tenor \lyricsto tenor \words

>>

\midi { \tempo 4 = 80 }
\layout { }
}

\version "2.6.3"  % necessary for upgrading to future LilyPond versions.

