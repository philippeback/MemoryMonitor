ui
initializeButtons

	| clearButton garbageCollectButton addProbeButton panel |
	
	clearButton := PluggableButtonMorph
				on: self
				getState: #buttonOn
				action: #clear
				label: #buttonClearLabel.
				
	
	

	garbageCollectButton := PluggableButtonMorph
				on: self
				getState: #buttonOn
				action: #garbageCollect
				label: #buttonGarbageCollectLabel.

	addProbeButton := PluggableButtonMorph
				on: self
				getState: #buttonOn
				action: #addProbe
				label: #buttonAddProbeLabel.

	panel := PanelMorph new.
	panel 
		layoutPolicy: RowLayout new; 
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.


	panel 
		addMorph: clearButton.
		"fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.3 @ 1) offsets: (0 @ 0 corner: 0 @ 0))."

	panel 
		addMorph: garbageCollectButton.
		"fullFrame: (LayoutFrame fractions: (0.3 @ 0 corner: 0.6 @ 1) offsets: (0 @ 0 corner: 0 @ 0))."

	panel
		addMorph: addProbeButton.
		"fullFrame: (LayoutFrame fractions: (0.6 @ 0 corner: 1 @ 1) offsets: (0 @ 0 corner: 0 @ 0))."

	^ panel