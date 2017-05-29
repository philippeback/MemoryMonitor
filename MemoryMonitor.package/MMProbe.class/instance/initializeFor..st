initialization
initializeFor: aSelectorOrBlock
	"aSelectorOrBlock indicates the selector to be invoked on the MMProbe subclass or what ot do"
	| v |
	super initialize.
	color := Color gray.
	probe := aSelectorOrBlock.
	values := Array new: self historyLength.
	v := self currentValue.
	1 to: values size do: [ :i | values at: i put: v ]