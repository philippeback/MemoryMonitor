actions
highlight: position
	position ifNil: [ highlightX := nil. ^ self ].
	highlightX := position x.
