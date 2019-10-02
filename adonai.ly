\include "cbieber.ily"

\header {
	title = "Adonai Adonai"
	composer = "Traditional"
	arranger = "ed. Leuchter"
}

harmony = \chordmode {
	\partial 4 s4 | d2.:m | d2.:m | d2.:m | a2.:7 |
	g2.:m | g2.:m | a2.:7 | d2.:m |
	d2.:m | d2.:m | d2.:m | d2.:m |
	g2.:m | d2.:m | g2:m e4:7 | a2. |
	a2.:7 | d2.:m
}

melody = \relative c' {
	\time 3/4
	\key d \minor
	\clef treble

	\mark \markup { \italic "Freely; louder each time through" }
	\repeat volta 3 { \relative c' {
		\partial 4 d8. d16 | d2 d8. d16 | d2 d4 | f e d | f e4. r8 |
		e4 e4. a,8 | e'4 e4 e8 e8 | g4 f e | f8( e) d2~ |
		d4 r4 d8 e8 | f4 e d | gis8 b8 a2~ | a4 r4 a8 a8 | bes4 a g | a g f8 f8 |
		}}
	\alternative { \relative c'
		{ g'4 f4 e8 d8 | a'2\fermata s4 | }
		{ g'4 f4 d8 cis8 | e4( d4\fermata) r4  \bar "|." }
		}
}

text = \lyricmode {
	A -- do -- | nai, A -- do -- | nai, el | ra -- chum v' -- | cha -- nun, | e -- rech a -- | pa -- yim v' -- rav | che -- sed v' -- | e -- met __ |
	No -- tser | che -- sed la -- | a -- la -- fim __ | no -- sey | a -- von va -- | fe -- sha v' -- cha -- | ta -- a v' -- na -- | key. | -ta -- a v' -- na -- | key. __
}

\score {
<<
	\new ChordNames {	\harmony }
	\new Voice = "chorus" { \melody }
	\new Lyrics \lyricsto "chorus" { \text }
>>
	\layout { }
	\midi { }
}
