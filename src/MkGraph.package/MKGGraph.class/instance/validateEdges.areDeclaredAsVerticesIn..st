initialization
validateEdges: anEdgeSet areDeclaredAsVerticesIn: aVertexSet
	^ aVertexSet includesAll: (
		(anEdgeSet collect: [ :edge | edge source ]), 
		(anEdgeSet collect: [ :edge | edge target ]))
