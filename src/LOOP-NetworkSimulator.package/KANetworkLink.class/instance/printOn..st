printing
printOn: aStream
	aStream nextPutAll: 'Link'.
	source 
		ifNotNil: [ aStream 
			nextPutAll: ' ';
			nextPutAll: source address ].
	destination 
		ifNotNil: [ aStream 
			nextPutAll: ' -> ';
			nextPutAll: destination address  ]