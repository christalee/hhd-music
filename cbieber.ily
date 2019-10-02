%{ Christalee Bieber
cbieber@alum.mit.edu
September 2019 %}

\paper {
	system-system-spacing.minimum-distance = #8
	system-system-spacing.padding = #4
	markup-system-spacing.minimum-distance = #8
	markup-system-spacing.padding = #4
	markup-markup-spacing.minimum-distance = #8
	score-markup-spacing.padding = #4
	#(set-paper-size "letter")
	left-margin = 0.75\in
	right-margin = 0.75\in
	top-margin = 0.5\in
	bottom-margin = 0.5\in
	indent = #0
}

\header {
	copyright = "September 2019 - Christalee Bieber"
}

\layout {
  \context {
    \Lyrics
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
		\override LyricText.self-alignment-X = #LEFT
  }
  \context {
    \Score
		\numericTimeSignature
    \override RehearsalMark.padding = #3
		\override RehearsalMark.self-alignment-X = #LEFT
		\override SystemStartBar.collapse-height = #4
		\override MetronomeMark.outside-staff-priority = #10000
		\override MetronomeMark.extra-offset = #'(-8 . 2)
  }
  \context {
    \ChordNames
    chordChanges = ##t
    \override ChordName.font-size = #-1
		\override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
  }
  \context {
    \Voice
    \override BreathingSign.Y-offset = #3.5
    \dynamicUp
		\override TextScript.staff-padding = #1
  }
	\context {
		\Staff
		\override InstrumentName.padding = #2
	}
}

\midi { \tempo 4 = 90 }

#(define-markup-list-command (cantor layout props text) (markup-list?)
	(interpret-markup-list layout props
		#{\markuplist {
			\hspace #6
			\box {
				\pad-markup #1 {
					\fontsize #2 {
						\wordwrap {
							{ \bold Cantor: } { #text }
						}
					}
				}
			}
		}
		#}
	)
)
