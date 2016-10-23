drawing - morphic
showToolTip
	| currentPosition |

	currentPosition := World activeHand position - self bounds origin.

	toolTipPosition := currentPosition.
	tooltip := (UITheme builder newBalloonHelp: (self getToolTipTextFor: currentPosition) for: World activeHand)
		popUpFor: (Morph new) hand:  World activeHand.

	self highlight: currentPosition.
