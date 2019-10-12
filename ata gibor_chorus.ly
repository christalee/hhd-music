\include "cbieber.ily"

\markup \cantor { Atah gibor l'olam Adonai m'chaye hakol atah rav l'hoshiah. }

\include "m'chalkeil chayim.ly"
\include "mi chamocha.ly"

\markup \cantor { V'ne'eman atah l'hachayot hakol. Baruch atah Adonai. }

\score {
	\new Staff \relative c' {
		\key bes \major
		\clef treble
		\time 4/4

		\mark "Chorus"
		\partial 8 bes'16 bes | bes8 bes16 bes16 bes8. bes16 bes4 r4 \bar "||"

		\mark "Cantor"
		\cadenzaOn
		d,16 d g8( d) g d'4( bes g2) \bar "||"
		\cadenzaOff

		\mark "Chorus"
		<g d'>4( <fis bes>4) <d g>2 | \bar "|."
	}
	\addlyrics {
		Ba -- ruch | hu u -- va -- ruch sh' -- mo! |
		M' -- cha -- ye __ ha -- kol __ |
		A -- men.
	}
}

\layout { }
