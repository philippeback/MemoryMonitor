actions
shiftValues
	2 to: self values size do: [ :i | self values at: i - 1 put: (self values at: i) ].
	self values at: (self values size) put: 0