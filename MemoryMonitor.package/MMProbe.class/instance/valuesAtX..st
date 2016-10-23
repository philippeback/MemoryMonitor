accessing-readonly
valuesAtX: x
	((0 to: self bounds width) includes: x) ifFalse: [ ^ nil ].
	^ self values at: (x * self values size / self bounds width)