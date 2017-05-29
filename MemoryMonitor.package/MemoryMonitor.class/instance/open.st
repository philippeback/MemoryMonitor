public
open
	"
	self new open
	"

	| window stringMorph buttonsMorph |
	window := StandardWindow labelled: self windowTitle.
	window
		addMorph: graph
		fullFrame:
			(LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0.6)
				offsets: (0 @ 0 corner: 0 @ 0)).
				
	stringMorph := MMMemoryUsageIndicatorMorph new.
	
	"stringMorph color: Color pink."
	window
		addMorph: stringMorph
		fullFrame:
			(LayoutFrame
				fractions: (0 @ 0.6 corner: 1 @ 0.7)
				offsets: (0 @ 0 corner: 0 @ 0)).
				
	stringMorph := MMMemoryBoundsIndicatorMorph new.
	stringMorph memoryProbe: memoryProbe.
	
	window
		addMorph: stringMorph
		fullFrame:
			(LayoutFrame
				fractions: (0 @ 0.7 corner: 0.8 @ 1)
				offsets: (0 @ 0 corner: 0 @ 0)).
	
	"stringMorph color: Color green."
	"stringMorph borderStyle: (BorderStyle simple color: Color red; yourself)."
	
	buttonsMorph := self initializeButtons.
	
	
	window
		addMorph: buttonsMorph
		fullFrame:
			(LayoutFrame
				fractions: (0 @ 0.9 corner: 1 @ 1)
				offsets: (0 @ 0 corner: 0 @ 0)).
	buttonsMorph borderStyle: (BorderStyle simple color: Smalltalk ui theme borderColor; yourself).
	
	window model: self.
	window openInWorld.
	window extent: self initialExtent.
	^ window