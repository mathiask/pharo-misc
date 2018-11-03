tests
testBuiltVerticesAndEdges
	| graph |
	graph := MKGGraphBuilderForLongestPath new
		addEdgeFrom: 1 to: 2;
		addEdgeFrom: 2 to: 3;
		build.
	self assert: (graph vertices collect: [ :v | v content]) 
		equals: (Set with: 1 with: 2 with: 3).
	self assert: (graph edges collect: [ :e | e source content -> e target content] )
		equals: (Set with: 1 -> 2 with: 2 -> 3).
	