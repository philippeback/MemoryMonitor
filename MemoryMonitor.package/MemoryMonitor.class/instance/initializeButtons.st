ui
initializeButtons

	| clearButton garbageCollectButton addProbeButton panel removeProbesButton |
	
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
				
	removeProbesButton := PluggableButtonMorph
				on: self
				getState: #buttonOn
				action: #removeProbes
				label: #buttonRemoveProbesLabel.

	panel := PanelMorph new.
	panel 
		layoutPolicy: RowLayout new; 
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.


	{ clearButton. garbageCollectButton.	addProbeButton. removeProbesButton  } do: [ :morph | panel addMorphBack: morph ].

	^ panel