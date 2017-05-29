initialize-release
initialize
	super initialize.
	
	graph := MMGraph new.

	graph 
		addProbe: MMGCProbe new;
		addProbe: MEndOfMemoryProbe new;
		addProbe: MFreeMemoryProbe new;
		addProbe: (memoryProbe := MUsedMemoryProbe new).