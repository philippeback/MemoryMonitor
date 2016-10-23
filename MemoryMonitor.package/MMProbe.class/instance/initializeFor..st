initialization
initializeFor: aSelectorOrBlock
	| v |
	super initialize.
	color := Color green.
	probe := aSelectorOrBlock.
	values := Array new: self historyLength.
	v := self currentValue.
	1 to: values size do: [ :i | values at: i put: v ]