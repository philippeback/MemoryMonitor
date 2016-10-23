versions
version100: spec 
	<version: '1.0' imports: #('1.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #release.
		spec 
			package: 'MemoryMonitor' with: 'MemoryMonitor-Alexandre_Bergel.8'].