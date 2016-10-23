as yet unclassified
step
	| total used usedNow valueString |
	total := Smalltalk vm parameterAt: 3.
	used := Smalltalk vm parameterAt: 2.
	usedNow := (used / total * 100.0) asInteger / 100.0.
	prevUsage = usedNow
		ifFalse: [super step.
			prevUsage := usedNow.
			"self done: prevUsage."
			valueString := (((used / (1024 * 1024)) asFloat * 100) asInteger / 100.0) asString , 'M/' , 
							(((total / (1024 * 1024)) asFloat * 100) asInteger / 100.0) asString , 'M = ' , 
							(((used / total * 100) asInteger / 100.0)
						* 100) asString , '%'.
			self contents: 'Memory usage : ', valueString]