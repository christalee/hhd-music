%{ TODO tidy up av harachamim include? fix midi output %}
\include "cbieber.ily"

\paper {
	print-all-headers = ##t
	markup-system-spacing.padding = #0
}

melodyA = \relative c' {
	\time 4/4
	\key e \minor
	\clef treble

	e4 b' a b8( c8) | b2. e,4 | a2 b4 c | b4( g8) fis8 e4( fis) | g4( b) fis( g) | e2. \breathe b'4 |
	d2. b4 | e2. b4 | c b a( d8 c8) | b2. r4 |
	a2 b4 c4 | b4( a8 g8 e4.) fis8 | g4 b fis( g) | e2. r4 |
	d'2. b4 | e2. b4 | c b a( d8 c8) | b2. r4 |
	a2\< b4 c4 | b4--^\markup { \italic rit. } a8-- g8-- e4.--\! \breathe fis8\> | g4( b) fis g | e2. r4\! \bar "|."
}

textA = \lyricmode {
	Av ha -- ra -- cha -- | mim, hei -- | ti -- vah vir -- | tzo -- n' cha | et __ tzi -- yon tiv -- | nei cho -- | mot y' -- ru -- sha -- la -- | yim | tiv -- nei cho -- mot __ y' -- | ru -- sha -- la -- | yim | ki v' -- | cha l' -- | vad ba -- tach -- | nu | me -- lech Eil | ram v' ni -- sa a -- | don o -- la -- | mim. |
}

\score {
	<<
	\new Voice = "chorus" { \melodyA }
	\new Lyrics \lyricsto "chorus" { \textA }
	>>
	\header {
		instrument = "Av Harachamim"
		poet = "Liturgy"
	}
}

\markup \cantor { Vay'hi bin'soah ha'aron vayomer moshe ku ma Adonai v'yafutzu oy'vecha v'yanusu m'sanecha mipanecha. }

harmonyB = \chordmode {
	g2 c4/g | g2 a4:m/c | d2 b4:7/dis | e2.:m |
	a2:m d4:m/a | a2:m d4:m6 | e2:7sus4 e4:7 | a2:m d4:7 |
	g2 g4/b | c2 a2:m | g4/d d4:7 | g2.
}

melodyB = \relative c' {
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
	\new ChordNames { \harmonyB }
	\new Voice = "chorus" {
		\time 3/4
		\key e \minor
		\clef treble
		\melodyB
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
	\header {
		instrument = "Ki Mi-Tzion"
		composer = "Solomon Sulzer"
		poet = "Liturgy"
	}
}

\layout { }
\midi { }
