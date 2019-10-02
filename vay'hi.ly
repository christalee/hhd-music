%{ TODO fix midi output %}
\include "cbieber.ily"

\header {
	title = "Vay'hi"
	composer = "Solomon Sulzer"
	poet = "Liturgy"
}

cantor_h = \chordmode {
	\partial 4 s4 | g2. | g2. | e2:m a4:7 | d2. | g2 b4:7/fis | e2:m g4/d | a2:m/g d4:7 | g2. | c2 c8 d8:7/g | g2/b a4:m7 | e2.:m/b | b2:7 d4:7/a |
}

cantor_m =  \relative c' {
	\set Staff.vocalName = #"Cantor"

	\partial 4 d8. d16 | g4 r4 g8. g16 | g4 g4 g8 a | b4. a8 \tuplet 3/2 { g fis e } | fis2. | \break
	b4 b8. b16 b8( c8) | b4. r16 b16 b4 | a g c8. a16 | b2. | \break
	e,4. r8. e16 fis8 | g4~ g16 fis e fis g fis g a | b2( g8 e8) | b2. | \break
}

cantor_l = \lyricmode {
	Va -- y' -- | hi bi -- n' -- | so -- ah ha -- a -- | ron va -- yo -- mer mo -- | she | ku ma A -- do -- | nai v' -- ya -- | fu -- tzu o -- y' -- | ve -- cha v' -- ya -- | nu -- su m' -- sa -- ne -- cha mi -- pa -- | ne -- | cha |
}

harmony = \chordmode {
	g2 c4/g | g2 a4:m/c | d2 b4:7/dis | e2.:m |
	a2:m d4:m/a | a2:m d4:m6 | e2:7sus4 e4:7 | a2:m d4:7 |
	g2 g4/b | c2 a2:m | g4/d d4:7 | g2.
}

melody = \relative c' {
	\set Staff.vocalName = #"Choir"

	\repeat volta 2 { \relative c'' {
		\bar ".|:" b2 g8. a16 | b2 a4 | a( g) fis8.( a16) | g2 r4 | \break
		c2 a8. b16 | c2 b4 | b( a) gis8.( b16) | a2 \breathe a8. a16 | \break
		b2 g8 fis8 | e2 a8 b | c4 b a | g2 r4 |
	}}
}

verseA = \lyricmode {
	Ki mi -- tzi -- | yon  tei -- | tzei __ to -- | rah |
	ki mi -- tzi -- | yon  tei -- | tzei __ to -- | rah  u -- d' -- |
	var A -- do -- | nai mi -- _ | ru -- sha -- la -- | yim |
}

verseB = \lyricmode {
	Baruch she -- na -- | tan to -- | rah __ to -- | rah |
	baruch she -- na -- | tan to -- | rah __ to -- | rah l' -- a -- |
	mo Yis -- ra -- | el bik -- du -- | _ sha -- _ | to |
}

\score {
	<<
	\new ChordNames { \cantor_h }
	\new Voice = "cantor" {
		\time 3/4
		\key e \minor
		\clef treble
		\cantor_m
	}

	\new Lyrics \lyricsto "cantor" { \cantor_l }
	>>
}

\score {
	<<
	\new ChordNames { \harmony }
	\new Voice = "chorus" {
		\time 3/4
		\key e \minor
		\clef treble
		\melody
	}

	\new Lyrics \lyricsto "chorus" {
		\set stanza = #"1. "
		\verseA
	}

	\new Lyrics \lyricsto "chorus" {
		\set stanza = #"2. "
		\verseB
	}
	>>
}

\layout { }
%{ \midi { } %}
