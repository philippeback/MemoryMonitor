stepping and presenter
step
	| min max |
	min := ((memoryProbe computeMinValue / (1024 * 1024)) asFloat * 100) asInteger / 100.0.
	max := ((memoryProbe computeMaxValue / (1024 * 1024)) asFloat * 100) asInteger / 100.0.
	self contents: 'Memory min: ', min printString , 'M max: ', max printString, 'M'