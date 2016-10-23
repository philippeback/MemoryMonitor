stepping and presenter
step
	self changed.
	probes do: [:probe | probe updateValue ].
	tooltip ifNotNil: [ 
		tooltip delete.
		self showToolTip ]