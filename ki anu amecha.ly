\include "cbieber.ily"

\header {
	title = "Ki Anu Amecha"
	composer = "Chassidic"
	poet = "Liturgy"
}

harmony = \chordmode {
	\partial 8 s8 | e1:m | e4:m b4 e2:m | a2:m d4:sus4 d4:7 | g1 |
	a1:m | c2 a2:m | e2:m/b b2:7 | e2.:m b4 | e1:m |
}

melody = \relative c' {
	\time 4/4
	\key d \major
	\clef treble

	\partial 8 b8 |
	\repeat volta 6 {
		g'2 g2 | g8( fis) fis( e) e4. e8 | a4 a4 g8( fis) e( fis) | g4.( a8 g a) g r |
		a2 a4. a8( e'4) e e,4. e8 | g4 g4 fis8( e fis g) |
	}
	\alternative {
		{ e4( b) e( fis) | }
		{ e2 e4. s8 | }
	}
}

text = \lyricmode {
	Ki a -- nu a -- me -- cha, | v' -- a -- ta E -- lo -- hei -- nu
	a -- nu va -- ne -- cha, v' -- a -- ta a -- vi -- nu. | rei -- nu.
}

\score {
	<<
	\new ChordNames { \harmony }
	\new Voice = "chorus" { \melody }
	\new Lyrics \lyricsto "chorus" { \text }
	>>

 	\layout { }
	\midi { }
}

\markup {
	\vspace #2
	\hspace #20

	\fontsize #2 {
		\column {
		"Anu avadecha, v'ata adoneinu"
		"anu k'halecha, v'ata chelkeinu."
		" "
		"Anu nahalatecha, v'ata goraleinu"
		"anu tzonecha, v'ata ro-einu."
		" "
		"Anu charmecha, v'ata not'reinu"
		"anu f'ullatecha, v'ata yotz'reinu."
		" "
		"Anu ra-yatecha, v'ata dodeinu"
		"anu s'gullatecha, v'ata k'roveinu."
		" "
		"Anu amecha, v'ata malkeinu"
		"anu ma-amirecha, v'ata ma-amireinu."
		}
	}
}
