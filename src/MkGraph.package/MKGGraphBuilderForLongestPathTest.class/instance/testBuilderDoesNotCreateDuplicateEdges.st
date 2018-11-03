tests
testBuilderDoesNotCreateDuplicateEdges
	| graph |
	graph := MKGGraphBuilderForLongestPath new
		addEdgeFrom: 1 to: 2;
		addEdgeFrom: 1 to: 2;
		build.
	self assert: graph edges size equals: 1
	