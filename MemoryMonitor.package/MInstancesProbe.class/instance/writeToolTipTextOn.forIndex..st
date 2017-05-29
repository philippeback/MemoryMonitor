actions
writeToolTipTextOn: stream forIndex: index

	stream 
		nextPutAll: classToBeProbed printString;
		nextPutAll: ': ';
		nextPutAll: (self valuesAt: index) printString;
		nextPutAll: ' instances'.

