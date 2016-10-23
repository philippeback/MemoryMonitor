accessing-readonly
currentValue
	| v answer |

	v := Smalltalk vm parameterAt: 9.
	"return true or false"
	
	oldValue ifNil: [ oldValue := v. ^ false ].
	answer := v - oldValue > 10.
	oldValue := v.
	^ answer