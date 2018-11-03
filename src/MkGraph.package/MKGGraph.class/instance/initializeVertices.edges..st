initialization
initializeVertices: aVertexSet edges: anEdgeSet
	self assert: [self validateEdges: anEdgeSet areDeclaredAsVerticesIn: aVertexSet].
	vertices := aVertexSet.
	edges := anEdgeSet.