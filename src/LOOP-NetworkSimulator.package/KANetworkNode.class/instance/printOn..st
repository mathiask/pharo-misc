printing
printOn: aStream
	aStream nextPutAll: 'Node (';
		nextPutAll: address;
		nextPutAll: ')'