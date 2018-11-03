testing
hasNoUnvisitedPredecessors: aVertex
	^ (self predecessorsOf: aVertex) allSatisfy: [ :each | each visited ]