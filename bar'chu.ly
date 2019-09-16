\header {
title = "Bar'chu"
composer = "Nusach melody"
arranger = "E. Schliefer, after S. Adler"
}

melody = \relative c' {
\time 4/4
\key bes \major
\clef treble

r2 f8( d16 f16 bes4~ | bes8) d, f( ees d4.) r8 | bes'8 bes16 bes16 f'8( d4.) d8 c16 d16 | c4( bes2) r4 | \break
\partial 8 d8 | d4 c8 d8 c4( bes4) | bes8. bes16 a8( bes8) a4( g4~ | g4) g8 g8 c4.( g8 | aes8 g aes) f g2 | \break
\partial 8 d'8 | d4 c8 d8 c4( bes4) | bes8. bes16 a8( bes8) c8( bes16 a16 g4~ | g8) g16 g16 g8.( d'16 c4. g8 | aes8 g \tuplet 3/2 { aes f) c' } c( g4.) \bar "|."
}

piano = \relative c' {

}

text = \lyricmode {
Ba -- | r' chu | el a -- do -- nai ha m' vo -- | rach, Ba -- | ruch a -- do -- nai | ha m' vo -- rach | l' o -- lam | va -- ed. Ba -- | ruch a -- do -- nai | ha m' vo -- rach | l' o -- lam | va -- ed.
}

\score {
<<
	\new Voice = "one" { \melody }
	\new Lyrics \lyricsto "one" { \text }
>>
	\layout { }
}
