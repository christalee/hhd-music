%{ TODO try shifting up a 3rd? %}
\include "cbieber.ily"

harmony = \chordmode {
	f1:m | f1:m | f1:m | c1:7 |
	c1:7 | c1:7 | c1:7 | f1:m |
}

melody = \relative c'' {
	\time 4/4
	\key f \minor
	\clef treble

	aes4 aes r8 g8 f g | aes4 aes r4. aes8 |
	<<
	{ \voiceOne aes4 g bes aes | }
	\new Voice = "alt1" { \voiceTwo aes8 aes g g bes bes aes aes | }
	>>
	\oneVoice
	g2. r4 |
	g4 g r8 f8 e f | g4 g r4. g8 |
	<<
	{ \voiceOne g4 f aes g | }
	\new Voice = "alt2" { \voiceTwo g8 g f f aes aes g g | }
	>>
	\oneVoice
	f2. r4 | \bar ":|."
}

verseA = \lyricmode {
	Me -- lech al kol ha -- a -- retz m' -- ka -- deish Yis -- ra -- eil
}

verseB = \lyricmode {
	ka -- deish ha -- sha -- bat v' -- Yis -- ra --
}

\score {
	<<
	\new ChordNames { \harmony }
	\new Voice = "chorus" { \melody }
	\new Lyrics \lyricsto "chorus" { \verseA \verseA }
	\new Lyrics \lyricsto "alt1" { \verseB }
	\new Lyrics \lyricsto "alt2" { \verseB }
	>>

	\header {
		title = "Melech Al Kol Ha'aretz"
		composer = "Zeidel Rovner (Trad.)"
	}

	\layout { }
	\midi { }
}
