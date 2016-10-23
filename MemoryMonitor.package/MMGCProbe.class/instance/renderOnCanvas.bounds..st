actions
renderOnCanvas: aCanvas bounds: bounds
	| width origin height maxValue offset minValue diffExtremeValue diffExtremeValues step previousPoint newPoint oldPoint newPoint1 newPoint2 |
	origin := bounds origin.
	height := bounds height.
	width := bounds width.
	
	offset := 0 @ 0.
	step := (bounds width / self historyLength ).

	self values
		do: [ :v | 
			v ifTrue: [
				newPoint1 := origin + offset asIntegerPoint.
				newPoint2 := newPoint1 + (0 @ height).
				aCanvas line: newPoint1 to: newPoint2 color: self color ].
			offset := offset + (step @ 0) ]