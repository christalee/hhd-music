\include "cbieber.ily"

\header {
	title = "Avinu Malkeinu"
	subtitle = "אָבִינוּ מַלְכֵּנוּ‎"
	composer = "Folk melody"
	arranger = "trans. E. Schleifer, 1988"
}

harmony = \chordmode {
	\partial 8 s8 | f4. ees4.:m  | f2. |
	f4. ees4.:m | f2. |
	f4. ees8:m f4 |
	f4. ees8:m f4 |
	f4. ees4.:m | f4. f4.:7 |

	f8:7 | bes2.:m | bes2.:m |
	f2. | f4. f4.:7 |
	bes2.:m | ees2.:m | f4. ees4.:m | f2.|
}

melody = \relative c' {
	\time 6/8
	\key des \major
	\clef treble

	\mark \markup { \italic "reprise on ooh" }
	\partial 8 f8 | a a a bes( a ges) | f4.( f8)  r8 f8 |
	a a a16 c16 bes8( a ges) | f4.( f8)  r8 f8 | \break
	a a a bes a \breathe f8 | a a a16 c16 bes8 a \breathe f8 | \break
	a bes c bes( a) ges | f4.( f8) r8 \mark "Fine" s8 | \break


	\mark \markup { \italic "repeat with harmony" }
	\repeat volta 2 { \relative c' {
		\partial 8 f8 | des'4 c8 des4( c8) | bes4.( bes8) r8 bes8 |
		c8 c8 bes8 c4( bes8) | a4.( a8) r8 f8 | \break
		des'4 c8 des8 des8 c8 | ees8 ees8 des8 c4 bes8 | \break
		a8 bes c bes( a ges) |
		}}
	\alternative {
		{ a4.( a8) r8 s8 | }
		{ f4.( f8) r4 \bar "|."
		\once \override Score.RehearsalMark.self-alignment-X = #RIGHT
		\mark "DC al Fine" }
		}
}

text = \lyricmode {
	A -- | vi -- nu mal -- kei -- | nu, __ cho -- | nei -- nu va -- a -- nei -- | nu, __ a -- | vi -- nu mal -- kei -- nu, cho -- | nei -- nu va -- a -- nei -- nu, ki | ein ba -- nu  ma -- a -- | sim. __ a -- | sei i -- ma -- | nu, __ tse -- | da -- ka va -- che -- | sed, __ a -- | sei i -- ma -- nu, tse -- | da -- ka va -- che -- sed, | ve -- ho -- shi -- ei -- | nu. __ | nu. __
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
