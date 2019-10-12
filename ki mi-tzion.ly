\include "cbieber.ily"

harmony = \chordmode {
	g2 c4/g | g2 a4:m/c | d2 b4:7/dis | e2.:m |
	a2:m d4:m/a | a2:m d4:m6 | e2:7sus4 e4:7 | a2:m d4:7 |
	g2 g4/b | c2 a2:m | g4/d d4:7 | g2.
}

melody = \relative c' {
	\time 3/4
	\key e \minor
	\clef treble

	\repeat volta 2 { \relative c'' {
		<<
		{ \voiceOne b2 }
		\new Voice = "alt1" { \voiceTwo b4 b4 }
		>>
		\oneVoice
		g8. a16 | b2 a4 | a( g) fis8.( a16) | g2 r4 | \break
		<<
		{ \voiceOne c2 }
		\new Voice = "alt1" { \voiceTwo b4 c4 }
		>>
		\oneVoice
		a8. b16 | c2 b4 | b( a) gis8.( b16) | a2 \breathe a8. a16 | \break
		b2 g8 fis8 | e2 a8 b | c4 b a | g2 r4 |
	}}
}

verseA = \lyricmode {
	Ki mi -- tzi -- | yon  tei -- | tzei __ to -- | rah, |
	ki mi -- tzi -- | yon  tei -- | tzei __ to -- | rah,  u -- d' -- |
	var A -- do -- | nai m' -- y' | ru -- sha -- la -- | yim |
}

verseB = \lyricmode {
	\set associatedVoice = "alt1"
	Ba -- \set associatedVoice = "chorus" ruch
	she -- na -- | tan to -- | rah __ to -- | rah, |
	\set associatedVoice = "alt1"
	Ba -- \set associatedVoice = "chorus" ruch
	she -- na -- | tan to -- | rah __ to -- | rah, l' -- a -- |
	mo Yis -- ra -- | el bik -- du -- | _ sha -- _ | to |
}

\score {
	<<
	\new ChordNames { \harmony }
	\new Voice = "chorus" {	\melody }

	\new Lyrics \lyricsto "chorus" {
		\set stanza = #"1. "
		\verseA
	}

	\new Lyrics \lyricsto "chorus" {
		\set stanza = #"2. "
		\verseB
	}
	>>

	\header {
		title = "Ki Mi-Tzion"
		composer = "Solomon Sulzer"
		poet = "Liturgy"
	}

	\layout { }
	\midi { }
}
