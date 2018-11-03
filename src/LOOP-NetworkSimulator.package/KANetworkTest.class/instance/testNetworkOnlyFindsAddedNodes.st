tests
testNetworkOnlyFindsAddedNodes
	self 
		should: [ net nodeAt: alone address ]
		raise: NotFound 