\include "cbieber.ily"

harmony = \chordmode {
	\partial 8 s8 | g1:m | d2 g2:m | g1:m | d2 g2:m | g1:m | d1:7 | g2.:m c4:m7 | d1 |
	g1:m | d1:7 | a4:dim7 g8:m/bes c8:m g4:m/d d4:7 | g2.:m f4:7 |
	bes1 | f2. d4/fis | g2.:m c4:m7 | d1 | g1:m | d1:7 | a4:dim7 g8:m/bes c8:m g4:m/d d4:7 | g2.:m
}

melody = \relative c' {
	\key bes \major
	\clef treble
	\time 4/4
	\set Staff.vocalName = #"Choir"

	\partial 8 d8 | g8.( a16) bes4 bes bes8 bes | a( g a bes) g4 r8 d8 | \break
	g8.( a16) bes4 bes bes8 bes | a g a bes g4 r8 d'8 |
	d4 bes bes8.( c16 d8) d16 d16 | c4 a a8.( bes16 c4) | bes g8( bes) d4 c8 bes | a4.( fis8 d4) r4 | \break
	d'4 bes8 bes bes8.( c16 d8 d8) | c4 a8 a a( bes c4) | c8( ees) d( c) bes4 a | g2. r4 | \break
	d'4 bes bes8.( c16) d4 | c4 a a8 bes c4 | bes g8( bes) d4 c8( bes) | a4.( fis8 d4) r4 | \break
	d'4 bes8 bes bes8.( c16 d4) | c4 a8 a8 a8.( bes16 c4) | c8 ees d c bes4 a | g2. r4 | \bar "|."
}

text = \lyricmode {
	M' -- chal -- keil cha -- yim b' -- | che -- sed m' -- | cha -- yei mei -- tim b' -- |
	ra -- cha -- mim ra -- bim, so -- | meich nof -- lim, __ v' -- ro -- | fei cho -- lim, __ |
	u -- ma -- tir a -- su -- | rim, __ | u -- m' -- ka -- yeim __ e -- | mu -- na -- to __ |
	li -- shei -- nei a -- | far. | Mi cha -- mo -- cha | ba -- al g' -- vu -- rot |
	u -- mi __ do -- me __ | lach. __ | Me -- lech mei -- mit __ | u -- m' -- cha -- yei __ |
	u -- matz -- mi' -- ach y' -- shu -- a. |
}

\score {
	<<
	\new ChordNames { \harmony }
	\new Voice = "chorus" { \melody }
	\new Lyrics \lyricsto "chorus" { \text }
	>>

	\header {
		title = "M'chalkeil chayim"
		composer = "S. Braslavsky"
	}

	\layout { }
	\midi { }
}
