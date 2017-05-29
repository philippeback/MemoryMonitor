ui
addProbe
	| className newProbe colors |
	className := UIManager default request: 'Enter the name of a class'.
	className ifNil: [ ^ self ].
	(Smalltalk globals includesKey: className asSymbol) ifFalse: [ self inform: 'Class not found'. ^ self ].
	
	newProbe := MInstancesProbe forClassNamed: className asSymbol.

	colors := Color wheel: 10.
	newProbe color: (colors at: graph numberOfProbes).
	
	graph addProbe: newProbe.