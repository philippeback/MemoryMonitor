drawing
drawOn: aCanvas
	aCanvas fillRectangle: self bounds color: self colorForBackground.
	probes do: [ :probe | probe renderOnCanvas: aCanvas bounds: self bounds ]