\include "cbieber.ily"

\header {
	title = "Melech Al Kol Ha'aretz"
	composer = "Traditional"
}

harmony = \chordmode {
	f1:m | f1:m | f1:m | c1:7 |
	c1:7 | c1:7 | c1:7 | f1:m |
}

melody = \relative c'' {
	\time 4/4
	\key f \minor
	\clef treble

	aes4 aes r8 g8 f g | aes4 aes r4. aes8 | aes4 g bes aes | g2. r4 |
	g4 g r8 f8 e f | g4 g r4. g8 | g4 f aes g | f2. r4 | \bar ":|."
}

verseA = \lyricmode {
	Me -- lech al kol ha -- a -- retz m' -- ka -- deish Yis -- ra -- eil
}

verseB = \lyricmode {
	Me -- lech al kol ha -- a -- retz m' -- ka -- deish ha -- sha -- bat v' --Yis -- ra -- eil
}

\score {
<<
	\new ChordNames { \harmony }
	\new Voice = "chorus" { \melody }
	\new Lyrics \lyricsto "chorus" { \verseA \verseA }
>>
	\layout { }
	\midi { }
}
