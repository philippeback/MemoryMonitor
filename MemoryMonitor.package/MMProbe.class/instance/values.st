accessing
values 
	| v |
	values ifNotNil: [ ^ values ].
	values := Array new: (self historyLength).
	v := self currentValue.
	1 to: self historyLength do: [ :i | values at: i put: v].
	
	^ values