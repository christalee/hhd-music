%{ TODO figure out harmony %}
\include "cbieber.ily"

\header {
	title = "V'ha-eir Eineinu"
	poet = "Psalm 86:11"
	composer = "Shlomo Carlebach"
}

harmonyA = \chordmode {
	\partial 8 s8 | a2:m d:m/e:7 | a:m e:7 | f/a:m c/a:7 | d:m g | d:m7 g:7 | c f/a:m | a:m d:m/f:7 | e:7 a:m |

	\partial 8 s8 | a1:m | d:m | g:7 | c2 e:7 | a1:m | d:m | b:dim7 | e:7 |
}

harmonyB = \chordmode {
	\partial 8 s8 | c2:m f:m/g:7 | c:m g:7 | aes/c:m ees/c:7 | f:m bes | f:m7 bes:7 | ees aes/c:m | c:m f:m/aes:7 | g:7 c:m |

	\partial 8 s8 | c1:m | f:m | bes:7 | ees2 g:7 | c1:m | f:m | d:dim7 | g:7 |
}

melody = \relative c' {
	\mark \default
	\partial 8 c8 | c( g) ees'8. ees16 ees8 d4 c8 | c( g) ees'4 ees8 d4 c8 | \break
	c( d) ees8. ees16 ees8( f) g8. g16 | f8 g aes( g) f4 r4 | \break
	f8( g aes4) g8 f4 r8 | ees8( f ) g4 f8 ees4 c8 | c g c4 \appoggiatura c16 c8 d ees4 | \appoggiatura d16 d8 c b( d) c4 r8
	\once \override Score.RehearsalMark.self-alignment-X = #RIGHT
	\mark "Fine" s8 | \bar ":|." \break
%{ ^\markup { \fret-diagram #"f:2;6-x;5-2-1;4-3-3;3-2-2;2-3-4;1-x;" } %}
	\mark \default
	\partial 8 g'8 | g4( c b) c | aes2. r4 | aes4 c b c | g2. r8 g8 | g4( c b) c | d( c aes2) | c4 d c aes | g( f ees d)
	\once \override Score.RehearsalMark.self-alignment-X = #RIGHT
	\mark "DC al Fine" | \bar "||"
}

verseA = \lyricmode {
	V' -- | ha -- eir ei -- nei -- nu b' -- | To -- ra -- te -- cha v' -- | da -- beik li -- bei -- nu b' -- | mitz -- vo -- te -- cha | v' -- ya -- cheid | l' --  va -- vei -- nu l' -- | a -- ha -- vah ul' -- yi -- rah | et sh' -- me -- cha. |
}

verseB = \lyricmode {
	\skip 4 Ki v' -- _ sheim __ _ _ | ko -- od' -- sh' -- cha __ _ |
	\set ignoreMelismata = ##t
	ha -- ga -- dol v' -- ha -- no -- ra __ _ | ba -- _
	\unset ignoreMelismata
	tach -- nu | na -- gi -- la | v' -- nis m' -- cha __ _ | na -- gi -- la
	\set ignoreMelismata = ##t
	v' -- nis m' -- cha | vi -- shu -- a --
	\unset ignoreMelismata
	te -- cha. |
}

refrain = \lyricmode {
	V' -- | lo __ nei -- | vosh | l' -- o -- lam va -- | ed v' -- | lo __ nei -- | vosh __ | l' -- o -- lam va -- | ed __ |
}

\score {
	<<
	%{ \new ChordNames { \harmonyA }
	\new ChordNames { \harmonyB } %}
	\new Voice = "chorus" {
		\time 4/4
		\key c \minor
		\clef treble
		\tempo "Brightly" 4 = 84
		\melody
	}

	\new Lyrics \lyricsto "chorus" {
		\set stanza = #"1. "
		\verseA
		\refrain
	}

	\new Lyrics \lyricsto "chorus" {
		\set stanza = #"2. "
		\set includeGraceNotes = ##t
		\verseB

	}
	>>

	\layout { }
	\midi { }
}
