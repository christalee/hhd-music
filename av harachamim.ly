\include "cbieber.ily"

\header {
title = "Av Harachamim"
poet = "Liturgy"
}

melody = \relative c' {
\time 4/4
\key e \minor
\clef treble

e4 b' a b8( c8) | b2. e,4 | a2 b4 c | b4( g8) fis8 e4( fis) | g4( b) fis( g) | e2. \breathe b'4 | d2. b4 | e2. b4 | c b a( d8 c8) | b2. r4 |
a2 b4 c4 | b4( a8 g8 e4.) fis8 | g4 b fis( g) | e2. r4 |
d'2. b4 | e2. b4 | c b a( d8 c8) | b2. r4 |
a2\< b4 c4 | b4--^\markup { \italic rit. } a8-- g8-- e4.--\! \breathe fis8\> | g4( b) fis g | e2. r4\! \bar "|."
}

text = \lyricmode {
Av ha -- ra -- cha -- | mim, hei -- | ti -- vah vir -- | tzo -- n' cha | et __ tzi -- yon tiv -- | nei cho -- | mot y' -- ru -- sha -- la -- | yim | tiv -- nei cho -- mot __ y' -- | ru -- sha -- la -- | yim | ki v' -- | cha l' -- | vad ba -- tach -- | nu | me -- lech Eil | ram v' ni -- sa a -- | don o -- la -- | mim. |
}

\score {
<<
	\new Voice = "chorus" { \melody }
	\new Lyrics \lyricsto "chorus" { \text }
>>
	\layout { }
}
