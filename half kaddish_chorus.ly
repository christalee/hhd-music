\include "cbieber.ily"

\header {
	title = "Half Kaddish"
	composer = "Wolf Shastopol"
	arranger = "ed. Laurence Avery"
}

text = \lyricmode {
	B' -- cha -- ye -- chom uv' -- yo -- me -- chon, u -- v' -- cha -- ye d' -- chol beit Yis -- ra -- el, ba -- ga -- la __ u' -- viz' -- man ka -- riv |
	v' -- im -- m' -- ru A -- men. Y' -- he sh'me ra -- ba m' -- va -- rach l' -- a -- lam ul' -- al' -- me al' -- ma -- ya yit -- ba -- rach |
}

coda = \lyricmode {
	B'rich hu l' -- e -- la -- lu -- le -- la -- min kol bir -- cha -- ta v' -- shi -- ra -- ta,
	tush -- b' -- cha -- ta v' -- ne -- che -- ma -- ta, da' -- a -- mi -- ran b' -- al' -- ma
	v' -- im -- m' -- ru | A -- men. |
}

melodyA = \relative c' {
	\clef treble
	\key bes \major
	\time 4/4

	r4. d8 d4( bes'8 g) | f4 g8( ees) d( ees) bes( c) | d4 g, d'( bes'8) g | f4 g8 ees d( ees) bes c | d4 g, g( c8) d |
	ees( c d) ees d4 g8( a) | bes([ g) a] \breathe bes a8.\noBeam a16 d4 \breathe | bes2( a) | g4 r8. d16 bes'4-> bes-> | a a8 a g4 d8 d8 | g4 fis8.\noBeam fis16 g4 a | bes c d2 | bes a | g2. r4 | \break
}

melodyB = \relative c' {
	\clef treble
	\key bes \major
	\time 4/4

	\tuplet 3/2 { bes'8( a g) } d2 r8 d8 | d4 bes'8 g f4 g8 ees | d ees bes16[ bes] c[ c] d4 g, |
	d'4( bes'8) g f4 g8 ees | d( ees bes) c d4 g, | g c8( d) ees[( c) d] ees | d4( g8[ a) bes( g a]) \breathe bes | a8.\noBeam a16 d2. \breathe | bes2( a) | g1 | \bar "|."
}

\markup \cantor { Yitgadal v'yitkadash sh'me raba.
	\hspace #15
	{ \bold Chorus: } AMEN
	{ \bold Cantor: } B'al'ma div'ra chirute v'yamlich mal chute. }

\score {
	<<
	\new Voice = "one" { \melodyA }
	\new Lyrics \lyricsto "one" { \text }
	>>
}

\markup \cantor { Yitbarach v'yishtabach v'yitpaar v'yitromam v'yitnase v'yit'hadar v'yitale v'yit'halal }

\score {
	<<
	\new Voice = "coda" { \melodyB }
	\new Lyrics \lyricsto "coda" { \coda }
	>>
}

\layout { }
