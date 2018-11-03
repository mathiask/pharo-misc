tests
testInstanceCreation
	| edge |
	edge := MKGEdge from: 1 to: 2.
	self assert: edge source equals: 1.
	self assert: edge target equals: 2.