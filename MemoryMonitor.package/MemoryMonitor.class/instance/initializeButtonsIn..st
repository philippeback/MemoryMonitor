ui
initializeButtonsIn: aWindow

	| clearButton garbageCollectButton addProbeButton |
	clearButton := PluggableButtonMorph
				on: self
				getState: #buttonOn
				action: #clear
				label: #buttonClearLabel.
	aWindow 
		addMorph: clearButton
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.3 @ 0) offsets: (0 @ 0 corner: 0 @ 24)).

	garbageCollectButton := PluggableButtonMorph
				on: self
				getState: #buttonOn
				action: #garbageCollect
				label: #buttonGarbageCollectLabel.
	aWindow 
		addMorph: garbageCollectButton
		fullFrame: (LayoutFrame fractions: (0.3 @ 0 corner: 0.6 @ 0) offsets: (0 @ 0 corner: 0 @ 24)).

	addProbeButton := PluggableButtonMorph
				on: self
				getState: #buttonOn
				action: #addProbe
				label: #buttonAddProbeLabel.
	aWindow 
		addMorph: addProbeButton
		fullFrame: (LayoutFrame fractions: (0.6 @ 0 corner: 1 @ 0) offsets: (0 @ 0 corner: 0 @ 24)).
