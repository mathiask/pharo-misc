tests
testInstanceCreation
	| vertices edges graph |
	vertices := Set with: 1 with: 2.
	edges := Set with: (MKGEdge from: 1 to: 2).
	graph := MKGGraph withVertices: vertices  andEdges: edges.
	self assert: graph vertices equals: vertices.
	self assert: graph edges equals: edges.