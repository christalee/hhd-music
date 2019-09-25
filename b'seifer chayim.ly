\include "cbieber.ily"

\header {
	title = "B'Seifer Chayim"
	poet = "Liturgy"
	composer = "Israel Goldfarb"
}

harmony = \chordmode {
	\partial 8 s8 | e2:m e:m7/d | c4.:maj7 e8:m/b a4:m e4:m | fis2:m7.5- b4:7sus4 b4:7 | e1:m | e2:m e:m7/d | c4.:maj7 e8:m/b a4:m e4:m | fis2:m7.5- b2:7 | e1:m |
	g4 g:7 c/g g | d2:7 b4:7/dis e:m | g2 c4/e fis:7 | b2 b:7 |
	e2:m e:m7/d | c4.:maj7 e8:m/b a4:m e4:m | fis2:m7.5- b4:7 | e1:m |

}

melody = \relative c' {
	\time 4/4
	\key e \minor
	\clef treble

 	\partial 8 b8 | e4 g b b8 b8 | b4 a8 g a4 g4 | a4 c b8 a g( fis) | g2. r4 | \break
	e4 g b4. b8 | b4 a8( g) a4( g) | a4 c b( g8 fis) | e2. r8 b'8 |
	b4( d c) b8. b16 | a4 c b8( a g4) | b2 c8( b) ais4 | b2 r4. b,8 |
	e4 g b b8 b8 | b4 a8( g) a4 g4 | a4( c) b( g8 fis) | e2. r8 s8 | \bar ":|."
}

text = \lyricmode {
	B' -- | sei -- fer cha -- yim b' -- | ra -- cha v' -- sha -- lom | u -- far -- na -- sa to -- | va |
	ni -- za -- cheir v' -- | ni -- ka -- teiv __ | l' -- fa -- ne -- | cha a -- |
	nach -- nu v' -- | chol am -- cha __ | beit Yis -- ra -- | eil l' -- |
	cha -- yim, to -- vim l' -- | cha -- yim to -- vim | ul' -- sha -- | lom. |
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
