accessing
getToolTipTextFor: position
	| str indexX indexY |
	indexX := (position x * probes first values size / self bounds width) asInteger .
	indexY := (position y * probes first values size / self bounds height) asInteger .
	str := WriteStream on: String new.
	probes do: [:p | 
		indexX > 0 ifTrue: [p writeToolTipTextOn: str forIndex: indexX].
		str cr ].
	^ str contents 