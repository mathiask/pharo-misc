printing
printOn: aStream
	aStream 
		nextPutAll: 'n(';
		nextPutAll: content asString;
		nextPutAll: ')'