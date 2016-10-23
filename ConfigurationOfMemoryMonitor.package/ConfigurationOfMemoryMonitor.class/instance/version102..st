versions
version102: spec 
        <version: '1.0.2' imports: #('1.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'MemoryMonitor' with: 'MemoryMonitor-AlexandreBergel.11'.
                ].