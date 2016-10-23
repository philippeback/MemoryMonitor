actions
renderOnCanvas: aCanvas bounds: bounds
	| width origin height maxValue offset minValue diffExtremeValue diffExtremeValues step previousPoint newPoint oldPoint |
	origin := bounds origin.
	height := bounds height.
	width := bounds width.
	maxValue := self computeMaxValue.
	minValue := self computeMinValue.
	diffExtremeValues := maxValue - minValue.
	diffExtremeValues = 0 ifTrue: [ diffExtremeValues := 1 ].
	offset := 0 @ 0.
	step := (bounds width / self historyLength ).
	previousPoint := nil.
	self values
		do: [ :v | 
			maxValue = 0
				ifTrue: [ maxValue := 1 ].
				
			newPoint := origin + offset asIntegerPoint + (0 @ (height) - 1) - (0@((v - minValue) * height / diffExtremeValues) asInteger).
			oldPoint ifNotNil: [ aCanvas line: oldPoint to: newPoint color: self color ].

			(highlightX notNil and: [((newPoint x <= (highlightX + origin x)) 
									and: [ (highlightX + origin x) < (newPoint x + step) ] )])
				ifTrue: [  aCanvas line: (newPoint - (-2 @ -2)) to:  (newPoint - (2 @ -2)) color: self color.
						  aCanvas line: (newPoint - (-2 @ -1)) to:  (newPoint - (2 @ -1)) color: self color.
						  aCanvas line: (newPoint - (-2 @ 0)) to:  (newPoint - (2 @ 0)) color: self color.
						aCanvas line: (newPoint - (-2 @ 1)) to:  (newPoint - (2 @ 1)) color: self color.
						aCanvas line: (newPoint - (-2 @ 2)) to:  (newPoint - (2 @ 2)) color: self color   ].

			oldPoint := newPoint.
			offset := offset + (step @ 0) ]