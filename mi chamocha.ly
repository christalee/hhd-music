\include "cbieber.ily"

melody = \relative c' {
	\key bes \major
	\clef treble
	\time 4/4
	\set Staff.vocalName = #"Choir"

	d4( bes') a( g) | fis8( g a fis) g2 | d4( d' c) bes | a8( bes) c( a) bes2 |
	d2 c4. a8 | bes8( a) bes c bes4( a) | \slashedGrace a8 a4( ees') d( c) | \slashedGrace c8 bes4 a g2 |
}

text = \lyricmode {
	\set Lyrics.includeGraceNotes = ##t
	Mi __ cha -- | mo -- cha | av __ ha -- | ra -- cha -- mim |
	zo -- cheir zo -- | cheir y' -- tzu -- rav __ | l' -- cha -- yim __ b' -- | ra -- cha -- mim. |
}

\score {
	<<
	\new Voice = "chorus" { \melody }
	\new Lyrics \lyricsto "chorus" { \text }
	>>

	\header {
		title = "Mi chamocha av harachamim"
		composer = "Israel Goldfarb"
	}

	\layout { }
	\midi { }
}
