\include "cbieber.ily"

\header {
	copyright = ##f
	tagline = "September 2019 - Christalee Bieber"
}

\score {
	<<
	\new Staff \with {
		\remove "Time_signature_engraver"
	} \relative c' {
		\key bes \major
		\clef treble
		\set Staff.vocalName = #"Cantor"
		\cadenzaOn
		d8 fis fis fis8.( ees16 d c d ees d) d8 g( a) bes bes16 a8( bes) a4( g) r8 \bar "|" \break
		g8 g8 c8. bes16 c8( bes16 a) g a( fis) fis8 ees fis ees4\fermata d2\fermata \bar "|"
	}
	\addlyrics {
		A -- tah gi -- bor __ l' -- o -- lam A -- do -- nai __ m' -- cha -- ye ha -- kol __ a -- tah __ rav l' -- ho -- shi -- ah.
	}
	>>
	\header {
		title = "Atah gibor"
		composer = "A. Katchko"
	}
}

\include "m'chalkeil chayim.ly"
\include "mi chamocha.ly"

\score {
	<<
	\new Staff \with {
    \remove "Time_signature_engraver"
	} \relative c' {
		\key bes \major
		\clef treble
		\set Staff.vocalName = #"Cantor"

		\cadenzaOn
		d16 d d bes'4( bes8 a g) fis16 g8( d c4.) d16 d d a'8. g16 g8( fis~ fis4.) \bar "|" \break
		d16 g4(~ g16 a bes a bes8 g~ g8.) bes16  d8. d16 cis8 d( a~ a4.) \bar "|"
	}
	\addlyrics {
		V' -- ne' -- e -- man __ a -- tah __ l' -- ha -- cha -- yot ha -- kol __
		Ba -- ruch __ a -- tah A -- do -- nai __
	}
	>>
	\header {
		title = "V'ne'eman atah"
	}
}

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
