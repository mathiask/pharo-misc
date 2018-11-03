tests
testBuilderDoesNotCreateDuplicateVertices
	| graph |
	graph := MKGGraphBuilderForLongestPath new
		addEdgeFrom: 1 to: 2;
		addEdgeFrom: 2 to: 3;
		build.
	self assert: graph vertices size equals: 3
	