printing
printOn: aStream
	aStream nextPutAll: 'e['.
	source printOn: aStream.
	aStream nextPutAll: '->'.
	target printOn: aStream.
	aStream nextPutAll: ']'