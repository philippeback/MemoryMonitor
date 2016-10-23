accessing
currentFreeMemory
	| image memoryEnd youngSpaceEnd |
	image := SmalltalkImage current.
	memoryEnd			:= image vmParameterAt: 3.
	youngSpaceEnd		:= image vmParameterAt: 2.
	^ memoryEnd - youngSpaceEnd