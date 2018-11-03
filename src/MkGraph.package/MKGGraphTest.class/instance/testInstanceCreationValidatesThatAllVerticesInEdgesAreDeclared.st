tests
testInstanceCreationValidatesThatAllVerticesInEdgesAreDeclared
	| vertices edges |
	vertices := Set with: 1 with: 2.
	edges := Set with: (MKGEdge from: 1 to: 2) with: (MKGEdge from: 1 to: 3).
	self 
		should: [MKGGraph withVertices: vertices  andEdges: edges]
		raise: AssertionFailure 
