\include "cbieber.ily"

\header {
	subtitle = "Half Kaddish"
	composer = "Wolf Shastopol"
	arranger = "ed. Laurence Avery"
}

text = \lyricmode {
	Yit -- ga -- dal __ | v' -- yit -- ka -- dash __ | sh' -- me ra -- ba __ |
	A -- MEN |
	B' -- al' -- ma __ | div' -- ra chi -- ru -- te __ v' -- yam -- lich __ | mal __ chu -- te.

	B' -- cha -- ye -- chom uv' -- yo -- me -- chon, u -- v' -- cha -- ye d' -- chol beit Yis -- ra -- el, ba -- ga -- la __ u' -- viz' -- man ka -- riv |
	v' -- im -- m' -- ru A -- men. Y' -- he sh'me ra -- ba m' -- va -- rach l' -- a -- lam ul' -- al' -- me al' -- ma -- ya yit -- ba -- rach |

}

verseA = \lyricmode {
	yit -- ba -- rach v' -- yish -- ta -- bach v' -- yit -- pa -- ar __ v' -- yit -- ro -- mam v' --
}

verseB = \lyricmode {
	yit -- na -- se v' -- yit' -- ha -- dar v' -- yit -- a -- le __ v' -- yit' -- ha -- lal __
}

coda = \lyricmode {
	sh'me d' -- ku -- d' -- sha |
	B'rich hu l' -- e -- la -- lu -- le -- la -- min kol bir -- cha -- ta v' -- shi -- ra -- ta,
	tush -- b' -- cha -- ta v' -- ne -- che -- ma -- ta, da' -- a -- mi -- ran b' -- al' -- ma
	v' -- im -- m' -- ru | A -- men. |
}

melody = \relative c' {
	\clef treble
	\key bes \major
	\time 5/4

	\set Staff.vocalName = #"Cantor"
	d8\noBeam d g2( fis) | \tuplet 3/2 { d8 d d } g2( fis) | fis8 \tuplet 3/1 { fis8[( ees) fis] } ees2( d) | d2 d2 r4 |
	r4. d16\noBeam d16 f4( d8 c bes) d | \tuplet 3/2 { f8 f f } g2( f4.) f16\noBeam f16 | bes8( a g2.) r4 |
	f8( ees d c bes4) a g\fermata | \break

	\time 4/4
	\set Staff.shortInstrumentName = #"Choir"
	r4. d'8 d4( bes'8 g) | f4 g8( ees) d( ees) bes( c) | d4 g, d'( bes'8) g | f4 g8 ees d( ees) bes c | d4 g, g( c8) d |
	ees( c d) ees d4 g8( a) | bes([ g) a] \breathe bes a8.\noBeam a16 d4 \breathe | bes2( a) | g4 r8. d16 bes'4-> bes-> | a a8 a g4 d8 d8 | g4 fis8.\noBeam fis16 g4 a | bes c d2 | bes a | g2. r4 | \break

	\repeat volta 2 { \relative c' {
		\set Staff.shortInstrumentName = #"Cantor"
	f4 f f4. f8 | g( a) bes( g) f4. f8 | f4 ees8( f) ees4( d8.\noBeam) d16 | d4 c8( d) c4( bes8.\noBeam) bes16 |
	}}  f8 f f f g2 |

	\set Staff.shortInstrumentName = #"Choir"
	\tuplet 3/2 { bes8( a g) } d2 r8 d8 | d4 bes'8 g f4 g8 ees | d ees bes16[ bes] c[ c] d4 g, |
	d'4( bes'8) g f4 g8 ees | d( ees bes) c d4 g, | g c8( d) ees[( c) d] ees | d4( g8[ a) bes( g a]) \breathe bes | a8.\noBeam a16 d2. \breathe | bes2( a) | g1 | \bar "|."
}

\score {
<<
	\new Voice = "one" { \melody }
	\new Lyrics \lyricsto "one" {
		\text
		<<
		{ \verseA }
		\new Lyrics { \verseB }
		>>
		\coda
	}
>>
	\layout { }
	\midi { }
}
