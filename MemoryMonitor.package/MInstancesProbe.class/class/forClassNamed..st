instance creation
forClassNamed: className
	 ^ (self  
		probeBlock: [:probe | (Smalltalk at: className asSymbol) instanceCount])
		classToBeProbed: (Smalltalk at: className asSymbol)