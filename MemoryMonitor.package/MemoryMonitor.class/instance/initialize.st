initialize-release
initialize
	super initialize.
	
	graph := MMGraph new.

	graph 
		addProbe: MMGCProbe new;
		addProbe: MEndOfMemoryProbe new;
		"addProbe: MFreeMemoryProbe new;" "This one is inverse of memoryProbe"
		addProbe: (memoryProbe := MUsedMemoryProbe new).