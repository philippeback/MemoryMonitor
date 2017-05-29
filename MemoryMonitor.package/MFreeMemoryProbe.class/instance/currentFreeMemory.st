accessing
currentFreeMemory
	| vm memoryEnd youngSpaceEnd |
	self flag: #FIXME. "Configure this to read the proper VM parameters based on https://clementbera.wordpress.com/2017/03/12/tuning-the-pharo-garbage-collector/"
	vm := Smalltalk vm.
	memoryEnd			:= vm parameterAt: 3.
	youngSpaceEnd		:= vm parameterAt: 2.
	^ memoryEnd - youngSpaceEnd