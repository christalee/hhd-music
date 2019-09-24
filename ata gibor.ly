%{ TODO check text; %}

\include "cbieber.ily"
\paper {
	print-all-headers = ##t
	system-system-spacing.padding = #2
	markup-system-spacing.padding = #0
}
\header{
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
		A -- tah gi -- bor __ l' -- o -- lam a -- do -- nai __ m' -- cha -- ye ha -- kol __ a -- ta __ rav l' -- ho -- shi -- ah.
	}
	>>
	\header {
		instrument = "Atah gibor"
		composer = "A. Katchko"
	}
}

\score {
	<<
	\new ChordNames {
		\chordmode {
			\partial 8 s8 | g1:m | d2 g2:m | g1:m | d2 g2:m | g1:m | d1:7 | g2.:m c4:m7 | d1 | g1:m | d1:7 | a4:dim7 g8:m/bes c8:m g4:m/d d4:7 | g2.:m f4:7 |
			bes1 | f2. d4/fis | g2.:m c4:m7 | d1 | g1:m | d1:7 | a4:dim7 g8:m/bes c8:m g4:m/d d4:7 | g2.:m
		}
	}
	\new Staff \relative c' {
		\key bes \major
		\clef treble
		\time 4/4
		\set Staff.vocalName = #"Choir"

		\partial 8 d8 | g8.( a16) bes4 bes bes8 bes | a( g a bes) g4 r8 d8 | \break
		g8.( a16) bes4 bes bes8 bes | a g a bes g4 r8 d'8 |
		d4 bes bes8.( c16 d8) d16 d16 | c4 a a8.( bes16 c4) | bes g8( bes) d4 c8 bes | a4.( fis8 d4) r4 | \break
		d'4 bes8 bes bes8.( c16 d8) d8 | c4 a a8( bes c4) | c8( ees) d( c) bes4 a | g2. r4 | \break
		d'4 bes bes8.( c16) d4 | c4 a a8 bes c4 | bes g8( bes) d4 c8( bes) | a4.( fis8 d4) r4 | \break
		d'4 bes8 bes bes8.( c16 d4) | c4 a8 a8 a8.( bes16 c4) | c8 ees d c bes4 a | g2. r4 | \bar "|."
	}
	\addlyrics {
		M' -- chal -- keil cha -- yim b' -- | che -- sed m' -- | cha -- yei mei -- tim b' -- |
		ra -- cha -- mim ra -- bim so -- | meich nof' -- lim __ v' -- ro -- | fei cho -- lim __ |
		u -- ma -- tir a -- su -- | rim __ | u -- m' -- ka -- yeim __ e -- | mu -- na -- to __ |
		li -- shei -- nei a -- | far | mi cha -- mo -- cha | ba -- al g' -- vu -- rot |
		u -- mi __ do -- me __ | lach __ | me -- lech mei -- mit __ | u -- m' -- cha -- yei __ |
		u -- matz -- mi -- ach y' -- shu -- a. |
	}
	>>
	\header {
		instrument = "M'chalkeil chayim"
		composer = "S. Braslavsky"
	}
}
\pageBreak
\score {
	<<
	\new Staff \relative c' {
		\key bes \major
		\clef treble
		\time 4/4
		\set Staff.vocalName = #"Choir"

		d4( bes') a( g) | fis8( g a fis) g2 | d4( d' c) bes | a8( bes) c( a) bes2 |
		d2 c4. a8 | bes8.( a16) bes8 c bes4( a) | \slashedGrace a8 a4( ees') d( c8) c8 | bes4 a g2 |
	}
	\addlyrics {
		\set Lyrics.includeGraceNotes = ##t
		Mi __ cha -- | mo -- cha | av __ ha -- | ra -- cha -- mim |
		zo -- cher zo -- | cher y' -- tzu -- rav __ | l' -- cha -- yim __ b' -- | ra -- cha -- mim. |
	}
	>>
	\header {
		instrument = "Mi chamocha av harachamim"
		composer = "Goldfarb"
	}
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
		d16 d d bes'4( bes8 a g) fis16 g8( d c4.) d16 d d a'8. g16 g8( fis~ fis4.) \bar "|" \break
		d16 g4(~ g16 a bes a bes8 g~ g8.) bes16  d8. d16 cis8 d( a~ a4.) \bar "|"
	}
	\addlyrics {
		V' -- ne -- e' -- man __ a -- tah __ l' -- ha -- cha -- yot ha -- kol __
		Ba -- ruch __ a -- tah a -- do -- nai __
	}
	>>
	\header {
		instrument = "V'ne'eman atah"
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
		A -- mein.
	}
}

\layout { }
