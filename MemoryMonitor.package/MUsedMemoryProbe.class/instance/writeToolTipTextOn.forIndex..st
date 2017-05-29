actions
writeToolTipTextOn: stream forIndex: index
	| v |
	v := self valuesAt: index.
	stream nextPutAll: ((((v / (1024 * 1024)) asFloat roundTo: 0.1) printShowingDecimalPlaces: 3)); nextPutAll: 'M'