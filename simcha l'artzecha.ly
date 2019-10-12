\include "cbieber.ily"

harmony = \chordmode {
	f1:m | f1:m | f1:m | c1:7 |
	c1:7 | c1:7 | c1:7 | f1:m |
}

melody = \relative c'' {
	\time 4/4
	\key a \minor
	\clef treble

	b4 b4 b8 a c( b) | a2. r8 fis8 | a4 a4 a8 g b( a) | g4 r8 fis e fis g a \bar ":|."
}

text = \lyricmode {
	Sim -- cha l' -- ar -- tze -- cha, v' -- sa -- son l' -- e -- re -- cha. \skip 4
}

\score {
	<<
	%{ \new ChordNames { \harmony } %}
	\new Voice = "chorus" { \melody }
	\new Lyrics \lyricsto "chorus" { \text }
	>>

	\header {
		title = "Simcha L'artzecha"
	}

	\layout { }
	\midi { }
}
