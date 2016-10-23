initialize-release
initialize
	super initialize.

	graph 
		addProbe: (memoryProbe := MUsedMemoryProbe new); 
		addProbe: MMGCProbe new;
		addProbe: MEndOfMemoryProbe new