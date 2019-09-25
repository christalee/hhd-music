%{ TODO figure out harmony, key signature %}
\include "cbieber.ily"

\header {
	title = "Melech Al Kol Ha'aretz"
	composer = "Traditional"
}

harmony = \chordmode {
	aes1:m | aes1:m | aes1:m | c1 |
	c1:7 | c1:7 | c1:7 | f1:m |
}

melody = \relative c'' {
	\time 4/4
	\key aes \minor
	\clef treble

	aes4 aes r8 ges8 fes ges | aes4 aes r4. aes8 | aes4 ges a aes | ges2. r4 |
	ges4 ges r8 fes8 ees fes | ges4 ges r4. ges8 | ges4 fes aes ges | fes2. r4 | \bar ":|."
}

verseA = \lyricmode {
	Me -- lech al kol ha -- a -- retz m' -- ka -- deish Yis -- ra -- eil
}

verseB = \lyricmode {
	Me -- lech al kol ha -- a -- retz m' -- ka -- deish ha -- sha -- bat v' --Yis -- ra -- eil
}

\score {
<<
	%{ \new ChordNames { \harmony } %}
	\new Voice = "chorus" { \melody }
	\new Lyrics \lyricsto "chorus" { \verseA \verseA }
>>
	\layout { }
	\midi { }
}
