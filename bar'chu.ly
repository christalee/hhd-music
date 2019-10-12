%{ TODO rewrite accompaniment with chords? omit last system %}
\include "cbieber.ily"

text = \lyricmode {
	Ba -- | r' -- chu __ | et A -- do -- nai ha m' -- vo -- | rach, Ba -- | ruch A -- do -- nai __ | ha m' -- vo -- rach __ | l' -- o -- lam __ | va -- ed. Ba -- | ruch A -- do -- nai __ | ha m' -- vo -- rach __ | l' -- o -- lam __ | va -- ed.
}

melody = \relative c' {
	\clef treble
	\key bes \major
	\time 4/4
	\override Staff.InstrumentName.padding = #0

	\set Staff.vocalName = #"Cantor"
	r2 f8( d16 f16 bes4~ | bes8) d, f( ees d4.) r8 | bes'8 bes16 bes16 f'8( d4.) d8 c16 d16 | c4( bes2) r4 | \break

	\set Staff.shortInstrumentName = #"Choir"
	\partial 8 d8 | d4 c8 d8 c4( bes4) | bes8. bes16 a8( bes8) a4( g4~ | g4) g8 g8 c4.( g8 | aes8 g aes) f g2 | \break

	\set Staff.shortInstrumentName = #"Cantor"
	\partial 8 d'8 | d4 c8 d8 c4( bes4) | bes8. bes16 a8( bes8) c8( bes16 a16 g4~ | g8) g16 g16 g8.( d'16 c4. g8 | aes8 g \tuplet 3/2 { aes f) c' } c( g4.) \bar "|."
}

treble = \relative c' {
	\clef treble
	\key bes \major
	\time 4/4

	<f bes>2 f8 g16 a
	<<
	{ \voiceOne bes4~ | bes8 d a }
	\new Voice { \voiceTwo <d, f>4~ | <d f>4. }
	>>
	\oneVoice
	g8-. <d f> <c ees> <bes d> f' | <bes f bes,>2 <f bes d> | <f a c>4
	<<
	{ \voiceOne bes2 }
	\new Voice { \voiceTwo <d, f>8 <ees g> <d f>4 }
	>>
	\oneVoice
	r4 | \break

	\partial 8 r8 | <f bes d>4 <ees g c>8 <f a d> <ees g c>4 <d f bes> | <d f bes> <c ees a>8 <d f bes> <c ees a>4 <bes d g>~ | <bes d g>2 <c' g c,> | <f, aes>8 <ees aes> d <c f> <b d g>2 | \break

	\partial 8 r8 | <f' bes>4 <c a'>2 <d g>4 | <d g> <c f>2 <bes d g>4~ | <bes d g>2 r4 <c g' c>4 |
	<<
	{ \voiceOne aes'4 f4 }
	\new Voice { \voiceTwo f8 ees d c }
	>>
	\oneVoice
	<b d g>2 |
}

bass = \relative c' {
	\clef bass
	\key bes \major
	\time 4/4

	<bes, f'>2 f'4( g8 f | ees4. f8 g a bes4) | d,2 bes' | f4 bes8 ees, c'4 r4 |

	\partial 8 r8 | d,4( c8 bes) \tuplet 3/2 { f' g a } bes4 | g4 c, \tuplet 3/2 { d8 ees f } g4~ | g4 f ees d8 c | <c' f,>4. <aes d,>8 g2 |

	\partial 8 r8 | bes,4 ees \tuplet 3/2 { f8 g a } bes4 | g c, d8 f g4~ | g f ees d8 c | <c' f,> 4. <aes d,>8 g2 |
}

\score {
	<<
	\new Voice = "one" { \melody }
	\new Lyrics \lyricsto "one" { \text }
	\new PianoStaff
		<<
		\new Staff \treble
		\new Staff \bass
		>>
	>>

	\header {
		title = "Bar'chu"
		composer = "Nusach"
		arranger = "E. Schleifer, after S. Adler"
	}

	\layout { }
	\midi { }
}
