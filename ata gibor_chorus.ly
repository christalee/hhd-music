%{ TODO center markup blocks on page %}
\include "cbieber.ily"
\paper {
	print-all-headers = ##t
}

\markup \cantor { Atah gibor l'olam adonai m'chaye hakol ata rav l'hoshiah. }

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
		%{ \set Staff.vocalName = #"Choir" %}

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
%{ \pageBreak %}
\score {
	<<
	\new Staff \relative c' {
		\key bes \major
		\clef treble
		\time 4/4
		%{ \set Staff.vocalName = #"Choir" %}

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

\markup \cantor { V'nee'man atah l'hachayot hakol. Baruch atah adonai. }

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
