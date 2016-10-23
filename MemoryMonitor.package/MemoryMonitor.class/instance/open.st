public
open
	"
	self new open
	"

	| window stringMorph |
	window := StandardWindow labelled: self windowTitle.
	window
		addMorph: graph
		fullFrame:
			(LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0.6)
				offsets: (0 @ 24 corner: 0 @ 0)).
	window
		addMorph: (stringMorph := MMMemoryUsageIndicatorMorph new)
		fullFrame:
			(LayoutFrame
				fractions: (0 @ 0.6 corner: 1 @ 0.8)
				offsets: (0 @ 0 corner: 0 @ 0)).
	stringMorph := MMMemoryBoundsIndicatorMorph new.
	stringMorph memoryProbe: memoryProbe.
	window
		addMorph: stringMorph
		fullFrame:
			(LayoutFrame
				fractions: (0 @ 0.8 corner: 1 @ 1)
				offsets: (0 @ 0 corner: 0 @ 0)).
	window model: self.
	self initializeButtonsIn: window.
	window openInWorld.
	window extent: self initialExtent.
	^ window