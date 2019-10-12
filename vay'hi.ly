\include "cbieber.ily"

harmony = \chordmode {
	\partial 4 s4 | g2. | g2. | e2:m a4:7 | d2. | g2 b4:7/fis | e2:m g4/d | a2:m/g d4:7 | g2. | c2 c8 d8:7/g | g2/b a4:m7 | e2.:m/b | b2:7 d4:7/a |
}

melody =  \relative c' {
	\set Staff.vocalName = #"Cantor"

	\partial 4 d8. d16 | g4 r4 g8. g16 | g4 g4 g8 a | b4. a8 \tuplet 3/2 { g fis e } | fis2. | \break
	b4 b8. b16 b8( c8) | b4. r16 b16 b4 | a g c8. a16 | b2. | \break
	e,4. r8. e16 fis8 | g4~ g16 fis e fis g fis g a | b2( g8 e8) | b2. | \break
}

text = \lyricmode {
	Va -- y' -- | hi bi -- n' -- | so -- ah ha -- a -- | ron va -- yo -- mer mo -- | she | ku ma A -- do -- | nai v' -- ya -- | fu -- tzu o -- y' -- | ve -- cha v' -- ya -- | nu -- su m' -- sa -- ne -- cha mi -- pa -- | ne -- | cha |
}

\score {
	<<
	\new ChordNames { \harmony }
	\new Voice = "cantor" {
		\time 3/4
		\key e \minor
		\clef treble
		\melody
	}
	\new Lyrics \lyricsto "cantor" { \text }
	>>

	\header {
		title = "Vay'hi"
		composer = "Solomon Sulzer"
		poet = "Liturgy"
	}
}

\include "ki mi-tzion.ly"

\layout { }
