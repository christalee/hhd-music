%{ TODO fix harmony %}
\include "cbieber.ily"

harmony = \chordmode {
	e4:m b:m/d a:m/c a:m | e1:m/g | a2:m/c g4/b d:7/a | e2:m/g c4 a:m6 | e2:m/b d2 | e1:m |
	g2. b4:m/fis | e2.:m g4/d | c4 g/d c:6 d:7 | g1 | a2:m/c g4/b d:7/a | e2:m/g c4. a8:m6 | e2:m/b d2 | e1:m |
	g2. b4:m/fis | e2.:m g4/d | c4 g/d c:6 d:7 | g1 | a2:m/c g4/b d:7/a | e2:m/g c4. a8:m6 | e2:m/b d2 | e1:m |
}

melody = \relative c' {
	\time 4/4
	\key e \minor
	\clef treble

	e4 b' a b8( c8) | b2. e,4 | a2 b4 c | b4( g8) fis8 e4( fis) | g4( b) fis( g) | e2. \breathe b'4 |
	d2. b4 | e2. b4 | c b a( d8 c8) | b2. r4 |
	a2 b4 c4 | b4( a8 g8 e4.) fis8 | g4 b fis( g) | e2. r4 |
	d'2. b4 | e2. b4 | c b a( d8 c8) | b2. r4 |
	a2\< b4 c4 | b4--^\markup { \italic rit. } a8-- g8-- e4.--\! \breathe fis8\> | g4( b) fis g | e2. r4\! \bar "|."
}

text = \lyricmode {
	Av ha -- ra -- cha -- | mim, hei -- | ti -- vah vir -- | tzo -- n' cha | et __ tzi -- yon tiv -- | nei cho -- | mot y' -- ru -- sha -- la -- | yim | tiv -- nei cho -- mot __ y' -- | ru -- sha -- la -- | yim | ki v' -- | cha l' -- | vad ba -- tach -- | nu | me -- lech Eil | ram v' ni -- sa a -- | don o -- la -- | mim. |
}

\score {
	<<
	%{ \new ChordNames { \harmony } %}
	\new Voice = "chorus" { \melody }
	\new Lyrics \lyricsto "chorus" { \text }
	>>

	\header {
		title = "Av Harachamim"
		poet = "Liturgy"
	}

	\midi { }
	\layout { }
}
